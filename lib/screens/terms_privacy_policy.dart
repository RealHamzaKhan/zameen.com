import 'package:flutter/material.dart';
import 'package:zameen_pk/constants/constants.dart';
class TermAndPrivacyPolicy extends StatelessWidget {
  const TermAndPrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Privacy Policy',style: kAppDrawerTextStyling.copyWith(
          fontSize: 23,
        ),),
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_rounded)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Text('No Terms & Privacy defined',style: kAppDrawerTextStyling.copyWith(
          color: Colors.green
        ),),
      ),
    );
  }
}
