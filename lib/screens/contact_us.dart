import 'package:flutter/material.dart';
import 'package:zameen_pk/constants/constants.dart';
class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_rounded)),
        title: Text('Contact Us',style: kAppDrawerTextStyling.copyWith(
          fontSize: 23,
        ),),
        elevation: 1,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.75,
            width: double.infinity,

            decoration: BoxDecoration(
                color: Colors.white,
              boxShadow: [BoxShadow(
                color: Colors.grey,
                offset: Offset.zero,
                blurRadius: 2,
              )]
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ASK US ANYTHING',style: kAppDrawerTextStyling.copyWith(
                    fontSize: 20,
                  ),),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: kDividerTextStylling,
                      suffix: Text('*',style: TextStyle(
                        color: Colors.green,
                      ),)
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: kDividerTextStylling,
                        suffix: Text('*',style: TextStyle(
                          color: Colors.green,
                        ),)
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Phone Number',
                        hintStyle: kDividerTextStylling,
                        suffix: Text('*',style: TextStyle(
                          color: Colors.green,
                        ),)
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Your Message',
                        hintStyle: kDividerTextStylling,
                        suffix: Text('*',style: TextStyle(
                          color: Colors.green,
                        ),)
                    ),
                  ),
                  Row(
                    children: [
                      Text('*',style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                      ),),
                      Text('All fields are required',style: kDividerTextStylling.copyWith(
                        fontSize: 12,
                      ),)
                    ],
                  ),
                  Center(
                    child: Container(
                      color: Colors.green,
                      height: MediaQuery.of(context).size.height*0.07,
                      width: MediaQuery.of(context).size.width*0.3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.send,color: Colors.white,),
                          Text('SEND',style: kAppDrawerTextStyling.copyWith(
                            color: Colors.white,
                          ),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: MediaQuery.of(context).size.height*0.4,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  offset: Offset.zero,
                  blurRadius: 2,
                )]
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('GIVE US CALL',style: kAppDrawerTextStyling.copyWith(
                    fontSize: 20,
                  ),),
                  Center(
                    child: Column(
                      children: [
                        Text('HELPLINE',style: kAppDrawerTextStyling.copyWith(
                          fontSize: 20,
                        ),),
                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: double.infinity,
                            maxHeight: double.infinity,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green,width: 2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 70),
                            child: Text('+92-314-6973314',style: kAppDrawerTextStyling.copyWith(
                              color: Colors.green,
                              fontSize: 25,
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text('Islamabad',style: kAppDrawerTextStyling.copyWith(
                          fontSize: 20,
                        ),),
                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: double.infinity,
                            maxHeight: double.infinity,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green,width: 2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 70),
                            child: Text('+92-340-6272956',style: kAppDrawerTextStyling.copyWith(
                              color: Colors.green,
                              fontSize: 25,
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
