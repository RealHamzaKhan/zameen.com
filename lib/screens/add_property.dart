import 'package:flutter/material.dart';
import 'package:zameen_pk/screens/search_screen.dart';

import '../constants/constants.dart';
class AddProperty extends StatefulWidget {
  const AddProperty({Key? key}) : super(key: key);

  @override
  State<AddProperty> createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios_rounded,color: Colors.black.withOpacity(0.7),),
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
                Row(
                  children: [
                    Icon(Icons.check_circle,color: searchIconColor,size: 30,),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Text('Purpose',style: kAppDrawerTextStyling.copyWith(
                      fontSize: 19,
                      fontWeight: FontWeight.w500
                    ),),
                  ],
                ),
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
                CustomHeader(Icons.maps_home_work_outlined, 'Select Property Type')
              ],
            ),
          ),
        ],
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
        Icon(icon,color: searchIconColor,size: 30,),
        SizedBox(width: MediaQuery.of(context).size.width*0.025,),
        Text(title,style: kAppDrawerTextStyling.copyWith(
            fontSize: 19,
            fontWeight: FontWeight.w500
        ),),
      ],
    );
  }
}
