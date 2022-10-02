import 'package:flutter/material.dart';
import 'package:zameen_pk/constants/constants.dart';
class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_rounded)),
        title: Text('About Us',style: kAppDrawerTextStyling.copyWith(
          fontSize: 23,
        ),),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('OUR EXECUTIVE TEAM',style: kAppDrawerTextStyling.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(height: MediaQuery.of(context).size.height*0.1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/hamza.jpg'),
                    radius: 60,
                  ),
                  Text('Hamza Raziq Khan',style: kAppDrawerTextStyling.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),),
                  Text('Co-Founder & Developer',style: kAppDrawerTextStyling.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.green,
                  ),)
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/sajid.jpg'),
                    radius: 60,
                  ),
                  Text('Sajid Ahmad',style: kAppDrawerTextStyling.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),),
                  Text('Founder',style: kAppDrawerTextStyling.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.green,
                  ),)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
