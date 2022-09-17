import 'package:flutter/material.dart';
import 'package:zameen_pk/constants/constants.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isChecked=true;
  bool isVideoChecked=true;
  String dropdownvalue = 'PKR';
  String areaDropDownValue='sq.ft';
  var items = [
    'PKR',
    'CAD',
    'SAR',
    'AED',
    'GBP',
    'USD',
  ];
  var areaItems=[
    'sq.m',
    'sq.ft',
    'sq.yd',
    'Marla',
    'Kanal'
  ];
  RangeValues rangeValues=RangeValues(0, 100000000);
  RangeValues areaRangeValues=RangeValues(0, 250000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black.withOpacity(0.8),
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        elevation: 0,
        title: Text('Filters'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text('Done',style: kAppDrawerTextStyling,),
          ),
          SizedBox(width: 15,)
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                Divider(thickness: 1,),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(Icons.check_circle,color: searchIconColor,),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Text('I want to',style: kAppDrawerTextStyling,),
                    Spacer(),
                    SlidingSwitch(value: false, onChanged: (bool value){}, onTap: (){}, onDoubleTap: (){}, onSwipe: (){},
                      textOn: 'Buy',
                      textOff: 'Rent',
                      colorOff: Colors.green,
                      colorOn: Colors.green,
                      width: 120,
                      height: 35,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 1,),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(Icons.map,color: searchIconColor,),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('City',style: kAppDrawerTextStyling,),
                        Text('Lahore',style: kAppDrawerTextStyling.copyWith(
                          color: Colors.green,
                          fontWeight: FontWeight.w500
                        ),),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.navigate_next),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 1,),
                SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.map_rounded,color: searchIconColor,),
                        SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                        Text('Select Locations',style: kAppDrawerTextStyling,),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.70,
                          height: MediaQuery.of(context).size.height*0.075,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey.withOpacity(0.3)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                Text('Search Locations',style: kAppDrawerTextStyling.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.withOpacity(0.7),
                                ),),
                                Spacer(),
                                Icon(Icons.search,color: Colors.grey,),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.2,
                          height: MediaQuery.of(context).size.height*0.075,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Icon(Icons.map,color: Colors.green,),
                                Spacer(),
                                Text('Map',style: kAppDrawerTextStyling,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 1,),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.home_work_outlined,color: searchIconColor,),
                        SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                        Text('Property Types',style: kAppDrawerTextStyling,),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height*0.17,
                      child: ContainedTabBarView(
                        tabBarProperties: TabBarProperties(
                          height: 50,
                          indicatorWeight: 8,
                          labelColor: Colors.green,
                        ),
                        tabs: [
                          Text('Home',style: kAppDrawerTextStyling,),
                          Text('Plots',style: kAppDrawerTextStyling,),
                          Text('Commercial',style: kAppDrawerTextStyling,),
                        ],
                        views: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                MyCustomListViewContainers(Icons.all_inclusive, 'All'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.home, 'Home'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.home_work_outlined, 'Flat'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.house_outlined, 'Upper Portion'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.house_siding_sharp, 'Lower Potion'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.warehouse_outlined, 'Farm House'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.door_back_door_outlined, 'Room'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.warehouse_sharp, 'Pent House'),
                                SizedBox(width: 20,),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                MyCustomListViewContainers(Icons.all_inclusive, 'All'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.room_rounded, 'Residential Plot'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.room, 'Commercial Plot'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.account_tree, 'Agricultural Land'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.factory_outlined, 'Industrial Land'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.file_copy, 'Plot File'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.format_align_justify, 'Plot Form'),
                                SizedBox(width: 20,),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                MyCustomListViewContainers(Icons.all_inclusive, 'All'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.warehouse_outlined, 'Office'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.shopping_cart, 'Shop'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.warehouse, 'Warehouse'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.factory, 'Factory'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.maps_home_work_outlined, 'Building'),
                                SizedBox(width: 20,),
                                MyCustomListViewContainers(Icons.more_horiz, 'Other'),
                                SizedBox(width: 20,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 1,),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.label,color: searchIconColor,),
                        SizedBox(width: MediaQuery.of(context).size.width*0.024,),
                        Text('Price Range',style: kAppDrawerTextStyling,),
                        Spacer(),
                        DropdownButton(
                          value: dropdownvalue,
                            items: items.map((String items){
                              return DropdownMenuItem(
                                  child: Text(items),
                              value: items,);
                            }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*0.045,
                          width: MediaQuery.of(context).size.width*0.3,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey.withOpacity(0.5)),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: rangeValues.start.round().toString(),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        Text('To',style: kAppDrawerTextStyling,),
                        Container(
                          height: MediaQuery.of(context).size.height*0.045,
                          width: MediaQuery.of(context).size.width*0.3,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey.withOpacity(0.5)),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: rangeValues.end.round().toString(),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    RangeSlider(values: rangeValues,
                        onChanged: (RangeValues values){

                      setState(() {
                        rangeValues=values;
                      });
                        },
                      max: 100000000,
                      divisions: 100000000,
                      labels: RangeLabels(rangeValues.start.round().toString(),rangeValues.end.round().toString() ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 1,),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.area_chart_outlined,color: searchIconColor,),
                        SizedBox(width: MediaQuery.of(context).size.width*0.024,),
                        Text('Area Range',style: kAppDrawerTextStyling,),
                        Spacer(),
                        DropdownButton(
                          value: areaDropDownValue,
                          items: areaItems.map((String areaItems){
                            return DropdownMenuItem(
                              child: Text(areaItems),
                              value: areaItems,);
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              areaDropDownValue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*0.045,
                          width: MediaQuery.of(context).size.width*0.3,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey.withOpacity(0.5)),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: areaRangeValues.start.round().toString(),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        Text('To',style: kAppDrawerTextStyling,),
                        Container(
                          height: MediaQuery.of(context).size.height*0.045,
                          width: MediaQuery.of(context).size.width*0.3,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey.withOpacity(0.5)),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: areaRangeValues.end.round().toString(),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    RangeSlider(values: areaRangeValues,
                      onChanged: (RangeValues values){

                        setState(() {
                          areaRangeValues=values;
                        });
                      },
                      max: 250000,
                      divisions: 250000,
                      labels: RangeLabels(areaRangeValues.start.round().toString(),areaRangeValues.end.round().toString() ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 1,),
                SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Colors.grey.withOpacity(0.3),
                          checkColor: Colors.blue,
                            value: true,
                            onChanged: (value){

                        }),
                        SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                        Text('Show Verified Ads Only',style: kAppDrawerTextStyling,),
                        Spacer(),
                        Switch(value: isChecked, onChanged: (bool? value){
                          setState(() {
                            isChecked=value!;
                          });
                        },
                        inactiveThumbColor: Colors.grey,
                          inactiveTrackColor: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    Text('Zameen.com verifies the location,size\nand advertiser information'
                        'of these\nlistings. T&Cs apply.',style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),)
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 1,),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Row(children: [
                      Icon(Icons.bed,color: searchIconColor,),
                      SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                      Text('Bedrooms',style: kAppDrawerTextStyling,),
                    ],),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: double.infinity,
                              maxWidth: double.infinity
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text('Studio',style: kAppDrawerTextStyling,),
                          ),
                        ),
                        CustomBedBathContainer('1'),
                        CustomBedBathContainer('2'),
                        CustomBedBathContainer('3'),
                        CustomBedBathContainer('4'),
                        CustomBedBathContainer('5'),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomBedBathContainer('6'),
                        CustomBedBathContainer('7'),
                        CustomBedBathContainer('8'),
                        CustomBedBathContainer('9'),
                        CustomBedBathContainer('10+'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 1,),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Row(children: [
                      Icon(Icons.bathtub,color: searchIconColor,),
                      SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                      Text('Bathrooms',style: kAppDrawerTextStyling,),
                    ],),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomBedBathContainer('1'),
                        CustomBedBathContainer('2'),
                        CustomBedBathContainer('3'),
                        CustomBedBathContainer('4'),
                        CustomBedBathContainer('5'),
                        CustomBedBathContainer('6+'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 1,),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.text_format_outlined,color: searchIconColor,),
                        SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                        Text('Add Keyword',style: kAppDrawerTextStyling,),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*0.080,
                          width: MediaQuery.of(context).size.width*0.74,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Try "Furnished","low price" etc',
                              hintStyle: kDividerTextStylling,
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*0.080,
                          width: MediaQuery.of(context).size.width*0.15,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.add,color: Colors.green,size: 30,),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 1,),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(Icons.video_camera_back_outlined,color: searchIconColor,),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Text('Show Ads with Videos Only',style: kAppDrawerTextStyling,),
                    Spacer(),
                    Switch(value: isVideoChecked, onChanged: (bool? value){
                      setState(() {
                        isVideoChecked=value!;
                      });
                    },
                      inactiveThumbColor: Colors.grey,
                      inactiveTrackColor: Colors.grey.withOpacity(0.5),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 1,),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(Icons.home_work_outlined,color: searchIconColor,),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Text('Select Agency',style: kAppDrawerTextStyling,),
                    Spacer(),
                    Icon(Icons.navigate_next)
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 1,),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height*0.070,
              width: MediaQuery.of(context).size.width*0.2,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              child: Center(
                child: Text('Reset',softWrap: true,style: kAppDrawerTextStyling.copyWith(
                  color: Colors.black.withOpacity(0.3),
                  fontSize: 23,
                ),),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width*0.025,),
            Container(
              height: MediaQuery.of(context).size.height*0.070,
              width: MediaQuery.of(context).size.width*0.5,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
              ),
              child: Center(
                child: Text('Show 1000+ Ads',softWrap: true,style: kAppDrawerTextStyling.copyWith(
                  color: Colors.white,
                  fontSize: 23,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class MyCustomListViewContainers extends StatelessWidget {
  IconData myIcon;
  String myTitle;
  MyCustomListViewContainers(@required this.myIcon,@required this.myTitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: double.infinity,
        maxWidth: double.infinity
      ),
      // height: MediaQuery.of(context).size.height*0.7,
      // width: MediaQuery.of(context).size.width*0.25,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey.withOpacity(0.3),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(myIcon,color: Colors.black.withOpacity(0.4),),
            SizedBox(width: 7,),
            Text(myTitle,style: kAppDrawerTextStyling.copyWith(
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.4),
            ),)
          ],
        ),
      ),
    );
  }
}
class CustomBedBathContainer extends StatelessWidget {
  String title;
  CustomBedBathContainer(@required this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxHeight: double.infinity,
          maxWidth: double.infinity
      ),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey.withOpacity(0.3),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
        child: Text(title,style: kAppDrawerTextStyling,),
      ),
    );
  }
}

