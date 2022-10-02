import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:zameen_pk/constants/constants.dart';
class MyProperties extends StatefulWidget {
  const MyProperties({Key? key}) : super(key: key);

  @override
  State<MyProperties> createState() => _MyPropertiesState();
}

class _MyPropertiesState extends State<MyProperties> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_rounded)),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text('My properties',style: kAppDrawerTextStyling.copyWith(
            fontSize: 29,
          ),),
          bottom: TabBar(
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.green,
            unselectedLabelColor: Colors.black.withOpacity(0.6),
            tabs: [
              Text('   Drafts   ',style: kAppDrawerTextStyling.copyWith(
               // color: Colors.black,
              ),),
              Text('   Uploaded   ',style: kAppDrawerTextStyling.copyWith(
                //color: Colors.black,
              ),),
            ],
          ),
        ),
        body:TabBarView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://png.pngtree.com/element_origin_min_pic/17/06/26/9835aff3ba703374f852738f9d237776.jpg',
              fit: BoxFit.fill,height: 100,width: 100,),
              Text('No Saved Drafts',style: TextStyle(
                fontSize: 26,
                color: Colors.green,
              ),),
              Text('It appears you have not drafted \nany properties'
                  ' yet',textAlign: TextAlign.center,style: TextStyle(
                fontSize: 18,
              ),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('ADD Property',style: kAppDrawerTextStyling.copyWith(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),),),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 12),
                child: Row(
                  children: [
                    CustomSelectionContainer(Colors.green, 'All'),
                    SizedBox(width: MediaQuery.of(context).size.width*0.020,),
                    CustomSelectionContainer(Colors.black38, 'Active'),
                    SizedBox(width: MediaQuery.of(context).size.width*0.020,),
                    CustomSelectionContainer(Colors.black38, 'Pending'),
                    SizedBox(width: MediaQuery.of(context).size.width*0.020,),
                    CustomSelectionContainer(Colors.black38, 'Rejected'),
                  ],
                ),
              ),
              Image.network('https://png.pngtree.com/element_origin_min_pic/17/06/26/9835aff3ba703374f852738f9d237776.jpg',
                fit: BoxFit.fill,height: 100,width: 100,),
              Text('No Saved Drafts',style: TextStyle(
                fontSize: 26,
                color: Colors.green,
              ),),
              Text('It appears you have not drafted \nany properties'
                  ' yet',textAlign: TextAlign.center,style: TextStyle(
                fontSize: 18,
              ),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('ADD Property',style: kAppDrawerTextStyling.copyWith(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),),),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
class CustomSelectionContainer extends StatelessWidget {
  Color borderColor;
  String myText;
  CustomSelectionContainer(this.borderColor,this.myText);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: double.infinity,
        maxHeight: double.infinity,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor,width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(myText,style: TextStyle(color: borderColor,
            fontSize: 15,
            fontWeight: FontWeight.w400),),
      ),
    );
  }
}
