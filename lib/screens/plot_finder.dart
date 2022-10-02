import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:zameen_pk/screens/drawer.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;
class PlotFinder extends StatefulWidget {
  const PlotFinder({Key? key}) : super(key: key);

  @override
  State<PlotFinder> createState() => _PlotFinderState();
}

class _PlotFinderState extends State<PlotFinder> {
  static const CameraPosition _cameraPosition=CameraPosition(target: LatLng(43.6532, 79.3832),zoom: 13);
  Completer<GoogleMapController> _completer=Completer();
  @override
  void initState() {
    getCurrentLocation();
    moveToCurrentLocation();
    // TODO: implement initState
    super.initState();
  }
  void moveToCurrentLocation()async{
    getCurrentLocation().then((value) async{
      CameraPosition cameraPosition=CameraPosition(target: LatLng(value.latitude, value.longitude),zoom: 13);
      GoogleMapController controller=await _completer.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    });
  }
  Future<Position> getCurrentLocation()async{
    await Geolocator.requestPermission().then((value) {}).onError((error, stackTrace){
      print('Error : ' + error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.green,
        title:  GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SearchPlacesApi();
            }));
          },
          child: Container(
            height: MediaQuery.of(context).size.height*0.060,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.purpleAccent.withOpacity(0.3),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(child: Text('Search for a place',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,

            ),)),
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GoogleMap(initialCameraPosition: _cameraPosition,
              onMapCreated: (GoogleMapController controller){
              _completer.complete(controller);
              },
            ),
            ),
          ],
        ),
      ),
    );
  }
}


//For searching places

class SearchPlacesApi extends StatefulWidget {
  const SearchPlacesApi({Key? key}) : super(key: key);

  @override
  State<SearchPlacesApi> createState() => _SearchPlacesApiState();
}

class _SearchPlacesApiState extends State<SearchPlacesApi> {
  TextEditingController _controller=TextEditingController();
  var uuid=Uuid();
  String _sessionToken='12342';
  List<dynamic> suggestionList=[];
  @override
  void initState() {
    _controller.addListener(() {
      onChanged();
    });
    super.initState();
  }
  void onChanged()
  {
    if(_sessionToken==null)
    {
      setState(() {
        _sessionToken=uuid.v4();
      });
    }
    getSuggestion(_controller.text);
  }
  void getSuggestion(String input)async
  {
    String places_api_key='AIzaSyBC7neEGX2RiyMlFVPLTz0LN-Uku4Yi3ws';
    String baseURL ='https://maps.googleapis.com/maps/api/place/autocomplete/json';
    String request = '$baseURL?input=$input&key=$places_api_key&sessiontoken=$_sessionToken';
    var response=await http.get(Uri.parse(request));
    if(response.statusCode==200)
    {
      setState(() {
        suggestionList=jsonDecode(response.body.toString())['predictions'];
      });
    }
    else{
      throw Exception('Failed to load data');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Search for a place',
                ),
              ),
              Expanded(
                  child:
                  ListView.builder(
                      itemCount: suggestionList.length,
                      itemBuilder: (context,index){
                        return GestureDetector(
                          onTap: ()async{
                            List<Location> locations = await locationFromAddress(suggestionList[index]['description']);
                            SearchedPlace(locations[index].latitude,locations[index].longitude);
                            Navigator.push(context,
                                MaterialPageRoute
                                  (builder: (context)=>SearchedPlace(locations[index].latitude,locations[index].longitude)));
                          },
                          child: ListTile(
                            title: Text(suggestionList[index]['description']),
                          ),
                        );
                      })
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class SearchedPlace extends StatefulWidget {
  double latitude;
  double longitude;
  SearchedPlace(@required this.latitude,@required this.longitude);

  @override
  State<SearchedPlace> createState() => _SearchedPlaceState();
}

class _SearchedPlaceState extends State<SearchedPlace> {
  CameraPosition cameraPosition=CameraPosition(target: LatLng(43.6532, 79.3832),zoom: 12);
  Completer<GoogleMapController> _controller=Completer();
  List<Marker> _list=[];
  List<Marker> _markers=[
    Marker(markerId: MarkerId('1'),
        position: LatLng(43.6532, 79.3832),
        infoWindow:  InfoWindow(
          title: '',
        )
    ),
  ];
  void moveToDestination()async{
    _list.add(Marker(markerId: MarkerId('2'),
      position: LatLng(widget.latitude, widget.longitude),
      infoWindow: InfoWindow(
        title: '',
      ),
    ),);
    CameraPosition cameraPosition=CameraPosition(target: LatLng(widget.latitude, widget.longitude),
      zoom: 12,
    );
    final GoogleMapController controller=await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    setState(() {

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    _list.addAll(_markers);
    moveToDestination();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.green,
        title:  GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SearchPlacesApi();
            }));
          },
          child: Container(
            height: MediaQuery.of(context).size.height*0.060,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.purpleAccent.withOpacity(0.3),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(child: Text('Search for a place',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,

            ),)),
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              markers: Set<Marker>.of(_list),
              onMapCreated: (GoogleMapController controller){
                _controller.complete(controller);
              },
              initialCameraPosition: cameraPosition,
            ),
          ),
        ],
      ),
    );
  }
}

