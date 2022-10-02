import 'package:flutter/material.dart';
import 'package:zameen_pk/constants/constants.dart';
import 'package:zameen_pk/screens/drawer.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:zameen_pk/screens/search_screen.dart';

import 'logged_in_screen.dart';
import 'new_projects.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  late AnimationController _fabAnimationController;
  late AnimationController _borderRadiusAnimationController;
  late Animation<double> fabAnimation;
  late Animation<double> borderRadiusAnimation;
  late CurvedAnimation fabCurve;
  late CurvedAnimation borderRadiusCurve;
  late AnimationController _hideBottomBarAnimationController;
  var _bottomNavIndex = 0;
  final List<IconData> iconsList=[
    Icons.home,
    Icons.home_work_outlined,
    Icons.favorite_outlined,
    Icons.person,
  ];
  final List<String> iconsLabelList=[
    'Home',
    'Projects',
    'Favourites',
    'Profile'
  ];
  @override
  void initState() {
    _fabAnimationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    _borderRadiusAnimationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    fabCurve = CurvedAnimation(
      parent: _fabAnimationController,
      curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );
    borderRadiusCurve = CurvedAnimation(
      parent: _borderRadiusAnimationController,
      curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );

    fabAnimation = Tween<double>(begin: 0, end: 1).animate(fabCurve);
    borderRadiusAnimation = Tween<double>(begin: 0, end: 1).animate(
      borderRadiusCurve,
    );

    _hideBottomBarAnimationController = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );

    Future.delayed(
      Duration(seconds: 1),
          () => _fabAnimationController.forward(),
    );
    Future.delayed(
      Duration(seconds: 1),
          () => _borderRadiusAnimationController.forward(),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      appBar: AppBar(
        elevation: 0,
        title: Image.asset('images/Zameen.png',height: 150,width: 200,),
        actions: [
          Icon(Icons.search_outlined,size: 40,),
          SizedBox(width: 10,),
        ],
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.3,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),),
              image: DecorationImage(image: AssetImage('images/property.png'),
                  fit: BoxFit.fitWidth,
                  filterQuality: FilterQuality.high,
                  alignment: Alignment.topCenter),
              color: Colors.green,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  SlidingSwitch(value: false, onChanged: (bool value){}, onTap: (){}, onDoubleTap: (){}, onSwipe: (){},
                    textOn: 'Buy',
                    textOff: 'Rent',
                    colorOff: Colors.green,
                    colorOn: Colors.green,
                    width: 150,
                    height: 45,
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(width: 4,),
                            Text('Search for ',style: kDividerTextStylling,),
                            DefaultTextStyle(
                              style: kDividerTextStylling,
                              child: AnimatedTextKit(repeatForever: true,
                                  isRepeatingAnimation: true,
                                  animatedTexts: [
                                TyperAnimatedText('Plots',speed: Duration(milliseconds: 100)),
                                TyperAnimatedText('House',speed: Duration(milliseconds: 100)),
                                TyperAnimatedText('Office',speed: Duration(milliseconds: 100)),
                              ]),
                            ),
                            Spacer(),
                            VerticalDivider(thickness: 1,),
                            Text('Lahore',style: kAppDrawerTextStyling.copyWith(fontSize: 12),),
                            SizedBox(width: 4,),
                            CircleAvatar(radius: 8,backgroundColor: Colors.green,child: Icon(Icons.arrow_forward_ios,size: 10,)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                children: [
                  SizedBox(height:30),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.5,
                    decoration: kContainerListDecoration,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Browse Properties',style: kAppDrawerTextStyling,),
                          Expanded(
                            child: Container(
                              // height: MediaQuery.of(context).size.height*0.3,
                              // width: double.infinity,
                              color: Colors.transparent,
                              child: ContainedTabBarView(
                                tabBarProperties: TabBarProperties(
                                  height: 50,
                                  indicatorWeight: 8,
                                  labelColor: Colors.green,
                                ),
                                  tabs: [
                                    CustomTabBarRow(Icons.home, 'Homes'),
                                    CustomTabBarRow(Icons.map_rounded, 'Plots'),
                                    CustomTabBarRow(Icons.maps_home_work_outlined, 'Commercial'),
                                  ],
                                  views: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 14),
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  MyCustomContainer('5 Marla', 'Houses'),
                                                  SizedBox(width: 10,),
                                                  MyCustomContainer('10 Marla', 'Houses'),
                                                  SizedBox(width: 10,),
                                                  MyCustomContainer('3 Marla', 'Houses'),
                                                  SizedBox(width: 10,),
                                                  MyCustomContainer('Furnished', 'Flats'),
                                                  SizedBox(width: 10,),
                                                  MyCustomContainer('1 Bedroom', 'Flats'),
                                                  SizedBox(width: 10,),
                                                  MyCustomContainer('2 Bedroom', 'Flats'),
                                                  SizedBox(width: 10,),
                                                ],
                                              ),
                                              SizedBox(height: 15,),
                                              Row(
                                                children: [
                                                  MyCustomContainer('Under 15000', 'Homes'),
                                                  SizedBox(width: 10,),
                                                  MyCustomContainer('Low Price', 'Houses'),
                                                  SizedBox(width: 10,),
                                                  MyCustomContainer('Independent', 'Houses'),
                                                  SizedBox(width: 10,),
                                                  MyCustomContainer('Studio', 'Flats'),
                                                  SizedBox(width: 10,),
                                                  MyCustomContainer('Furnished', 'Rooms'),
                                                  SizedBox(width: 10,),
                                                  Container(
                                                    margin: EdgeInsets.only(right: 5),
                                                    height: MediaQuery.of(context).size.height*0.12,
                                                    width: MediaQuery.of(context).size.width*0.30,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 14),
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  MyCustomContainer('Residential', 'Plot'),
                                                  SizedBox(width: 10,),
                                                  MyCustomContainer('Commercial', 'Plot'),
                                                  SizedBox(width: 10,),
                                                  MyCustomContainer('Plot', 'File'),
                                                  SizedBox(width: 10,),
                                                ],
                                              ),
                                              SizedBox(height: 15,),
                                              Row(
                                                children: [
                                                  MyCustomContainer('Plot', 'Form'),
                                                  SizedBox(width: 10,),
                                                  MyCustomContainer('Agricultural', 'Land'),
                                                  SizedBox(width: 10,),
                                                  MyCustomContainer('Industrial', 'Land'),
                                                  SizedBox(width: 10,),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 14),
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  MyCustomContainer('Furnished', 'Offices'),
                                                  SizedBox(width: 10,),
                                                  MyCustomContainer('New', 'Offices'),
                                                  SizedBox(width: 10,),
                                                  MyCustomContainer('Small', 'Offices'),
                                                  SizedBox(width: 10,),
                                                ],
                                              ),
                                              SizedBox(height: 15,),
                                              Row(
                                                children: [
                                                  MyCustomContainer('New', 'Shops'),
                                                  SizedBox(width: 10,),
                                                  MyCustomContainer('Commercial', 'Others'),
                                                  SizedBox(width: 10,),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.12,
                                                    width: MediaQuery.of(context).size.width*0.30,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                onChange: (index){},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.2,
                    decoration: kContainerListDecoration,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10),
                          child: Text('Recent Searches',style: kAppDrawerTextStyling,),
                        ),
                        Expanded(
                          child: ListView.builder(itemCount: 3,scrollDirection: Axis.horizontal,itemBuilder: (context,index){
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.3,
                                height: MediaQuery.of(context).size.height*0.1,
                                decoration: kContainerListDecoration,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.search,size: 15,),
                                          SizedBox(width: 3,),
                                          Text('Homes for Sale',style: kAppDrawerTextStyling.copyWith(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Colors.blue,
                                          ),)
                                        ],
                                      ),
                                      SizedBox(height: 3,),
                                      Text('All area sizes',style: kAppDrawerTextStyling.copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                      ),),
                                      SizedBox(height: 3,),
                                      Row(
                                        children: [
                                          Icon(Icons.navigation,size: 10,color: Colors.grey.withOpacity(0.6),),
                                          SizedBox(width: 2,),
                                          Text('Lahore',style: kDividerTextStylling.copyWith(
                                            fontSize: 10,
                                          ),),
                                        ],
                                      ),
                                      SizedBox(height: 3,),
                                      Row(
                                        children: [
                                          Icon(Icons.label,size: 10,color: Colors.grey.withOpacity(0.6),),
                                          SizedBox(width: 2,),
                                          Text('Any Price',style: kDividerTextStylling.copyWith(
                                            fontSize: 10,
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.35,
                    decoration: kContainerListDecoration,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Viewed Properties',style: kAppDrawerTextStyling,),
                          Expanded(
                            child: ListView.builder(
                                itemCount: 4,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,index){
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        height: MediaQuery.of(context).size.height*0.15,
                                        width: MediaQuery.of(context).size.width*0.5,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/32870/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                              ),fit: BoxFit.fill),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('PKR',style: kAppDrawerTextStyling.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),),
                                      Text('3.15 Crore',style: kAppDrawerTextStyling,),
                                    ],
                                  ),
                                  Text('Formanities Housing Scheme',style: kDividerTextStylling.copyWith(
                                    fontSize: 10,
                                  ),),
                                  SizedBox(height: 10,),
                                  Text('House for sale',style: kAppDrawerTextStyling.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue,
                                  ),),
                                  SizedBox(height:5),
                                  Row(
                                    children: [
                                      Icon(Icons.area_chart_outlined,size: 20,),
                                      Text('10 Marla'),
                                      SizedBox(width: 7,),
                                      Icon(Icons.bed,size: 20,),
                                      Text('5'),
                                      SizedBox(width: 7,),
                                      Icon(Icons.bathtub_outlined,size: 20,),
                                      Text('6'),
                                    ],
                                  ),
                                ],
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.3,
                    decoration: kContainerListDecoration.copyWith(
                      image: DecorationImage(image: NetworkImage('https://www.freepnglogos.com/uploads/world-map-png/world-map-png-image-collections-for-download-2.png'))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Plot',style: kAppDrawerTextStyling.copyWith(
                            color: Colors.green,
                            fontSize: 25,
                          ),),
                          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                          Text('Interactive Society Maps',style: kAppDrawerTextStyling,),
                          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                          Text('1.2M+ Plots | 2500+ societies',style: kAppDrawerTextStyling.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),),
                          Spacer(),
                          Container(
                            height: MediaQuery.of(context).size.height*0.06,
                            width: MediaQuery.of(context).size.width*0.35,
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.25),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Text('Try it Now',style: kAppDrawerTextStyling.copyWith(
                                    color: Colors.green,
                                  ),),
                                  Spacer(),
                                  Icon(Icons.arrow_forward,color: Colors.green,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.35,
                    decoration: kContainerListDecoration,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Recommended Properties',style: kAppDrawerTextStyling,),
                          Expanded(
                            child: ListView.builder(
                                itemCount: 4,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,index){
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.15,
                                            width: MediaQuery.of(context).size.width*0.5,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/1396132/pexels-photo-1396132.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                              ),fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text('PKR',style: kAppDrawerTextStyling.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),),
                                          Text('3.15 Crore',style: kAppDrawerTextStyling,),
                                        ],
                                      ),
                                      Text('Formanities Housing Scheme',style: kDividerTextStylling.copyWith(
                                        fontSize: 10,
                                      ),),
                                      SizedBox(height: 10,),
                                      Text('House for sale',style: kAppDrawerTextStyling.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blue,
                                      ),),
                                      SizedBox(height:5),
                                      Row(
                                        children: [
                                          Icon(Icons.area_chart_outlined,size: 20,),
                                          Text('10 Marla'),
                                          SizedBox(width: 7,),
                                          Icon(Icons.bed,size: 20,),
                                          Text('5'),
                                          SizedBox(width: 7,),
                                          Icon(Icons.bathtub_outlined,size: 20,),
                                          Text('6'),
                                        ],
                                      ),
                                    ],
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.25,
                    decoration: kContainerListDecoration,
                    child: Padding(
                      padding: const EdgeInsets.only(top:25.0,right:25,left:25,bottom:3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),fit: BoxFit.fill)
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text('Looking to sell or rent\nout your property?',style: kAppDrawerTextStyling.copyWith(
                                fontSize: 18,
                              ),),
                            ],
                          ),
                          SizedBox(height:10),
                          Container(
                            height: MediaQuery.of(context).size.height*0.06,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.25),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Center(
                                child: Text('Post an Ad',style: kAppDrawerTextStyling.copyWith(
                                  color: Colors.green,
                                ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.35,
                    decoration: kContainerListDecoration,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New Projects',style: kAppDrawerTextStyling,),
                          Expanded(
                            child: ListView.builder(
                                itemCount: 4,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,index){
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.15,
                                            width: MediaQuery.of(context).size.width*0.5,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(image: NetworkImage('https://cdn.pixabay.com/photo/2018/01/26/08/37/architecture-3108075_960_720.jpg',
                                              ),fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text('PKR',style: kAppDrawerTextStyling.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),),
                                          Text('3.15 Crore',style: kAppDrawerTextStyling,),
                                        ],
                                      ),
                                      Text('Formanities Housing Scheme',style: kDividerTextStylling.copyWith(
                                        fontSize: 10,
                                      ),),
                                      SizedBox(height: 10,),
                                      Text('House for sale',style: kAppDrawerTextStyling.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blue,
                                      ),),
                                      SizedBox(height:5),
                                      Row(
                                        children: [
                                          Icon(Icons.area_chart_outlined,size: 20,),
                                          Text('10 Marla'),
                                          SizedBox(width: 7,),
                                          Icon(Icons.bed,size: 20,),
                                          Text('5'),
                                          SizedBox(width: 7,),
                                          Icon(Icons.bathtub_outlined,size: 20,),
                                          Text('6'),
                                        ],
                                      ),
                                    ],
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.32,
                    decoration: kContainerListDecoration,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Latest News',style: kAppDrawerTextStyling,),
                          Expanded(
                            child: ListView.builder(
                                itemCount: 4,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,index){
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.13,
                                            width: MediaQuery.of(context).size.width*0.3,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/photos/five-thousand-pakistani-rupees-banknotes-close-up-view-with-selective-picture-id1411337800',
                                              ),fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Text('SBP reserves highest\nin two months at USDT\n 8.85 bn',style: kAppDrawerTextStyling.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),),
                                      SizedBox(height: 10,),
                                      Text('Sep 04,2022',style: kDividerTextStylling.copyWith(
                                        fontSize: 10,
                                      ),),
                                    ],
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.32,
                    decoration: kContainerListDecoration,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Latest Videos',style: kAppDrawerTextStyling,),
                          Expanded(
                            child: ListView.builder(
                                itemCount: 4,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,index){
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.13,
                                            width: MediaQuery.of(context).size.width*0.3,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(image: NetworkImage('https://cdn.pixabay.com/photo/2020/03/31/11/06/journalist-4987228_960_720.jpg',
                                              ),fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Text('Is the media and\ngovernment going in\nthe same line',style: kAppDrawerTextStyling.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),),
                                      SizedBox(height: 10,),
                                      Text('3.78k views',style: kDividerTextStylling.copyWith(
                                        fontSize: 10,
                                      ),),
                                    ],
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(
          Icons.search_rounded,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {
          _fabAnimationController.reset();
          _borderRadiusAnimationController.reset();
          _borderRadiusAnimationController.forward();
          _fabAnimationController.forward();
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          itemCount: iconsList.length,
          tabBuilder: (int index,bool isActive){
            final color= isActive?Colors.green:Colors.grey;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    if(iconsLabelList[index]=='Projects'){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NewProjects()));
                    }
                    else if(iconsLabelList[index]=='Profile'){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoggedInScreen()));
                    }
                  },
                  child: Icon(
                    iconsList[index],
                    size: 24,
                    color: color,
                  ),
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    iconsLabelList[index],
                    maxLines: 1,
                    style: TextStyle(color: color),
                  ),
                )
              ],
            );
          },
        backgroundColor: Colors.white,
        activeIndex: _bottomNavIndex,
        splashColor: Colors.white,
        notchAndCornersAnimation: borderRadiusAnimation,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapLocation: GapLocation.center,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index){
            setState(() {
              _bottomNavIndex=index;
            });
        },
          hideAnimationController: _hideBottomBarAnimationController,
        shadow: BoxShadow(
          offset: Offset(0, 1),
          blurRadius: 12,
          spreadRadius: 0.5,
          color: Colors.white38,
        ),
      ),
    );
  }
}

class CustomTabBarRow extends StatelessWidget {
  IconData iconData;
  String title;
  CustomTabBarRow(@required this.iconData,@required this.title);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(iconData,color: Colors.green,),
      SizedBox(width: MediaQuery.of(context).size.width*0.03,),
      Text(title,style: TextStyle(color: Colors.black.withOpacity(0.6)),),
    ],);
  }
}

class MyCustomContainer extends StatelessWidget {
  String title;
  String description;
  MyCustomContainer(@required this.title,@required this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.12,
      width: MediaQuery.of(context).size.width*0.30,
      child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,style: kAppDrawerTextStyling.copyWith(fontWeight: FontWeight.w400),),
          Text(description,style: kDividerTextStylling,)
        ],
      )),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 2,
          offset: Offset(1, 2),
        )],
      ),
    );
  }
}

