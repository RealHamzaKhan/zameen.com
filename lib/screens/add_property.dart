import 'dart:io';

import 'package:flutter/material.dart';
import 'package:zameen_pk/screens/search_screen.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import '../constants/constants.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';
class AddProperty extends StatefulWidget {
  const AddProperty({Key? key}) : super(key: key);

  @override
  State<AddProperty> createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  File? image;
  final _picker=ImagePicker();
  Future getImageFromGallery()async{
    final pickedimage=await _picker.pickImage(source: ImageSource.gallery,imageQuality: 80);
    if(pickedimage!=null){
      image=File(pickedimage.path);
      setState((){

      });
    }
    else{
      print('image not selected');
    }
  }
  Future getImageFromCamera()async{
    final pickedimage=await _picker.pickImage(source: ImageSource.camera,imageQuality: 80);
    if(pickedimage!=null){
      image=File(pickedimage.path);
      setState((){

      });
    }
    else{
      print('image not selected');
    }
  }
  bool isChecked=false;
  bool isCheckedPossession=false;
  String areaDropDownValue='sq.ft';
  var areaItems=[
    'sq.m',
    'sq.ft',
    'sq.yd',
    'Marla',
    'Kanal'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        elevation: 0,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_rounded,color: Colors.black.withOpacity(0.7),)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15),
            child: Text('Clear All',style: kAppDrawerTextStyling.copyWith(
              color: Colors.black.withOpacity(0.7),
            ),),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage('http://clipart-library.com/new_gallery/3-30973_white-house-clipart-house-number-house-clipart-transparent.png'),
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomRight
              ),
              color: Colors.green[100],
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Post an Ad',style: kAppDrawerTextStyling.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 29,
                  ),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.025,),
                  Text('Reach thousands of\nbuyers and tenants in a\nfew steps',style: kAppDrawerTextStyling.copyWith(
                    color: Colors.black.withOpacity(0.4),
                  ),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
            child: Column(
              children: [
                CustomHeader(Icons.check_circle, 'Purpose'),
                SizedBox(height: 15,),
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.090,),
                    CustomBedBathContainer('Sell'),
                    SizedBox(width: MediaQuery.of(context).size.width*0.040,),
                    CustomBedBathContainer('Rent Out'),
                  ],
                ),
                SizedBox(height: 20,),
                addPropertyDivider,
                SizedBox(height: 20,),
                CustomHeader(Icons.maps_home_work_outlined, 'Select Property Type'),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    // constraints: BoxConstraints(
                    //   maxHeight: double.infinity,
                    //   maxWidth: double.infinity
                    // ),
                    height: MediaQuery.of(context).size.height*0.5,
                    width: double.infinity,
                    child: ContainedTabBarView(
                      tabBarProperties: TabBarProperties(
                        labelColor: Colors.green,
                        indicatorWeight: 4,
                      ),
                      tabs: [
                        Text('Homes',style: kAppDrawerTextStyling,),
                        Text('Plots',style: kAppDrawerTextStyling,),
                        Text('Commercial',style: kAppDrawerTextStyling,),
                      ],
                      views: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  MyCustomTabBarContainers(Icons.home, 'House'),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.030,),
                                  MyCustomTabBarContainers(Icons.home_work, 'Flat'),
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.020,),
                              Row(
                                children: [
                                  MyCustomTabBarContainers(Icons.house_siding_sharp, 'Upper Portion'),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.030,),
                                  MyCustomTabBarContainers(Icons.house_siding, 'Lower Portion'),
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.020,),
                              Row(
                                children: [
                                  MyCustomTabBarContainers(Icons.other_houses_outlined, 'Farm House'),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.030,),
                                  MyCustomTabBarContainers(Icons.door_front_door_outlined, 'Room'),
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.020,),
                              Row(
                                children: [
                                  MyCustomTabBarContainers(Icons.calculate_rounded, 'Penthouse'),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  MyCustomTabBarContainers(Icons.room_outlined, 'Residential Plot'),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                                  MyCustomTabBarContainers(Icons.room, 'Commercial Plot'),
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.020,),
                              Row(
                                children: [
                                  MyCustomTabBarContainers(Icons.nature, 'Agricultural Plot'),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                                  MyCustomTabBarContainers(Icons.factory, 'Industrial Land'),
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.020,),
                              Row(
                                children: [
                                  MyCustomTabBarContainers(Icons.file_copy, 'Plot File'),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                                  MyCustomTabBarContainers(Icons.format_list_bulleted_sharp, 'Plot Form'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  MyCustomTabBarContainers(Icons.home_work_outlined, 'Office'),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                                  MyCustomTabBarContainers(Icons.shopping_cart, 'Shop'),
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.020,),
                              Row(
                                children: [
                                  MyCustomTabBarContainers(Icons.warehouse, 'Warehouse'),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                                  MyCustomTabBarContainers(Icons.factory, 'Factory'),
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.020,),
                              Row(
                                children: [
                                  MyCustomTabBarContainers(Icons.home_work_outlined, 'Building'),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                                  MyCustomTabBarContainers(Icons.more_horiz, 'Other'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                addPropertyDivider,
                SizedBox(height: 20,),
                Row(
                  children: [
                    CircleAvatar(child: Icon(Icons.room,color: searchIconColor,size: 18,),radius:15 ,
                      backgroundColor: Colors.black.withOpacity(0.1),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('City'),
                        SizedBox(height: 5,),
                        Text('Lahore',style: kAppDrawerTextStyling,)
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.navigate_next_sharp,color: searchIconColor,),
                  ],
                ),
                SizedBox(height: 20,),
                addPropertyDivider,
                SizedBox(height: 20,),
                Row(
                  children: [
                    CustomIconsAvatar(Icons.map),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Text('Select Location',style: kAppDrawerTextStyling,),
                    Spacer(),
                    Icon(Icons.navigate_next_sharp,color: searchIconColor,),

                  ],
                ),
                SizedBox(height: 20,),
                addPropertyDivider,
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomIconsAvatar(Icons.area_chart),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Area Size',style: kAppDrawerTextStyling,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width*0.8,
                              //color: Colors.blue,
                              child: Row(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      constraints: BoxConstraints(
                                        maxWidth: MediaQuery.of(context).size.width*0.5,
                                        maxHeight: double.infinity,
                                      ),
                                      border: InputBorder.none,
                                      hintText: 'Enter Area Size',
                                    ),
                                  ),
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
                            ),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
                addPropertyDivider,
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomIconsAvatar(Icons.label_important_outline),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Total Price',style: kAppDrawerTextStyling,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width*0.8,
                              //color: Colors.blue,
                              child: Row(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      constraints: BoxConstraints(
                                        maxWidth: MediaQuery.of(context).size.width*0.5,
                                        maxHeight: double.infinity,
                                      ),
                                      border: InputBorder.none,
                                      hintText: 'Enter amount',
                                    ),
                                  ),
                                  Spacer(),
                                  Text('PKR'),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
                addPropertyDivider,
                SizedBox(height: 20,),
                Row(
                  children: [
                    CustomIconsAvatar(Icons.card_giftcard_sharp,),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Text('Installments Available',style: kAppDrawerTextStyling,),
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
                SizedBox(height: 20,),
                addPropertyDivider,
                SizedBox(height: 20,),
                Row(
                  children: [
                    CustomIconsAvatar(Icons.branding_watermark_sharp,),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Text('Ready for possession',style: kAppDrawerTextStyling,),
                    Spacer(),
                    Switch(value: isCheckedPossession, onChanged: (bool? value){
                      setState(() {
                        isCheckedPossession=value!;
                      });
                    },
                      inactiveThumbColor: Colors.grey,
                      inactiveTrackColor: Colors.grey.withOpacity(0.5),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                addPropertyDivider,
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomIconsAvatar(Icons.title),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Property Title',style: kAppDrawerTextStyling,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width*0.8,
                              //color: Colors.blue,
                              child: Row(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      constraints: BoxConstraints(
                                        maxWidth: MediaQuery.of(context).size.width*0.8,
                                        maxHeight: double.infinity,
                                      ),
                                      border: InputBorder.none,
                                      hintText: 'Enter Title e.g Beautiful new house',
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
                addPropertyDivider,
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomIconsAvatar(Icons.description_outlined),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Property Description',style: kAppDrawerTextStyling,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width*0.8,
                              //color: Colors.blue,
                              child: Row(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      constraints: BoxConstraints(
                                        maxWidth: MediaQuery.of(context).size.width*0.8,
                                        maxHeight: double.infinity,
                                      ),
                                      border: InputBorder.none,
                                      hintText: 'Enter Title e.g Beautiful new house',
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
                addPropertyDivider,
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomIconsAvatar(Icons.home_outlined),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Features and Amenities',style: kAppDrawerTextStyling,),
                        Text('Add additional features e.g parking\nspaces waste'
                            'disposal,internet etc'),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: MediaQuery.of(context).size.height*0.065,
                      width: MediaQuery.of(context).size.width*0.2,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green,width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Add',style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.green,
                              fontSize: 16
                            ),),
                            Icon(Icons.add,color: Colors.green,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                addPropertyDivider,
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomIconsAvatar(Icons.image),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Upload image of your property',style: kAppDrawerTextStyling,),
                        SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                        Row(
                          children: [
                            Icon(Icons.check,color: Colors.green,size: 10,),
                            Text('Ads with pictures get 5x more views and leads'),
                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                        Row(
                          children: [
                            Icon(Icons.check,color: Colors.green,size: 10,),
                            Text('Upload good quaility images with proper lighting'),
                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                        Row(
                          children: [
                            Icon(Icons.check,color: Colors.green,size: 10,),
                            Text('Cover all areas of your property'),
                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.025,),
                        DottedBorder(
                          strokeWidth: 2,
                            borderType: BorderType.RRect,
                            dashPattern: [10,10],
                            color: Colors.green,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.2,
                              width: MediaQuery.of(context).size.width*0.7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  //image from gallery
                                  getImageFromGallery();
                                },
                                child: Container(
                          height: MediaQuery.of(context).size.height*0.070,
                                  width: MediaQuery.of(context).size.width*0.45,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.image,color: Colors.white,),
                                      SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                                      Text('From Gallery',style: kAppDrawerTextStyling.copyWith(
                                        color: Colors.white,
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                              GestureDetector(
                                onTap: (){
                                  //image from camera
                                  getImageFromCamera();
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.height*0.070,
                                  width: MediaQuery.of(context).size.width*0.45,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black.withOpacity(0.2),width: 2),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.camera_alt,color: Colors.green,),
                                      SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                                      Text('From Camera',style: kAppDrawerTextStyling.copyWith(
                                        color: Colors.green,
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                addPropertyDivider,
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomIconsAvatar(Icons.email_outlined),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Email Address',style: kAppDrawerTextStyling,),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 15),
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width*0.8,
                              maxHeight: double.infinity,
                            ),
                            border: InputBorder.none,
                            hintText: 'hamzakhan@gmail.com',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                addPropertyDivider,
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  CustomIconsAvatar(Icons.phone),
                  SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Contact Number',style: kAppDrawerTextStyling,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(children: [
                                Image.network('https://www.shutterstock.com/image-vector/flag-pakistan-symbol-independence-day-600w-1010102737.jpg',height: 30,width: 30,),
                                SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                                Text('+92',style: kAppDrawerTextStyling,),
                                Icon(Icons.arrow_drop_down_sharp,color: Colors.black.withOpacity(0.4),),
                              ],),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.075,),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: '3xx xxxxxxx',
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width*0.5,
                                  //maxHeight: double.infinity,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(children: [
                                Image.network('https://www.shutterstock.com/image-vector/flag-pakistan-symbol-independence-day-600w-1010102737.jpg',height: 30,width: 30,),
                                SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                                Text('+92',style: kAppDrawerTextStyling,),
                                Icon(Icons.arrow_drop_down_sharp,color: Colors.black.withOpacity(0.4),),
                              ],),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.075,),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: '3xx xxxxxxx',
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width*0.5,
                                  //maxHeight: double.infinity,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],),
                SizedBox(height: 20,),
                addPropertyDivider,
                
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.070,
              width: MediaQuery.of(context).size.width*0.3,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              child: Center(
                child: Text('Save as Draft',softWrap: true,style: kAppDrawerTextStyling.copyWith(
                  color: Colors.black.withOpacity(0.3),
                  fontSize: 20,
                ),),
              ),
            ),
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height*0.050,
              width: MediaQuery.of(context).size.width*0.4,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
              ),
              child: Center(
                child: Text('Post Ad',softWrap: true,style: kAppDrawerTextStyling.copyWith(
                  color: Colors.white,
                  fontSize: 20,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class CustomHeader extends StatelessWidget {
  IconData icon;
  String title;
  CustomHeader(@required this.icon,@required this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconsAvatar(icon),
        SizedBox(width: MediaQuery.of(context).size.width*0.025,),
        Text(title,style: kAppDrawerTextStyling.copyWith(
            fontSize: 19,
            fontWeight: FontWeight.w500
        ),),
      ],
    );
  }
}
class MyCustomTabBarContainers extends StatelessWidget {
  IconData myIcon;
  String myTitle;
  MyCustomTabBarContainers(@required this.myIcon,@required this.myTitle, {Key? key}) : super(key: key);

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
        color: Colors.grey.withOpacity(0.15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
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
class CustomIconsAvatar extends StatelessWidget {
  IconData icon;
  CustomIconsAvatar(@required this.icon);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black.withOpacity(0.1),
      radius: 15,
      child: Icon(icon,color: searchIconColor,size: 18,),
    );
  }
}
