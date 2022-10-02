import 'package:flutter/material.dart';

import '../constants/constants.dart';
class QoutaCredits extends StatelessWidget {
  const QoutaCredits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_rounded)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Qouta and Credits',style: kAppDrawerTextStyling.copyWith(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hamza Raziq Khan',style: kAppDrawerTextStyling.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),),
                        SizedBox(height: 8,),
                        Text('Individual',style: kAppDrawerTextStyling.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.5),
                        ),),
                        SizedBox(height: 5,),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text('Basic',style: kAppDrawerTextStyling.copyWith(
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green.withOpacity(0.2),
                      ),
                      child: Icon(Icons.perm_identity_rounded,color: Colors.green,size: 50,),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(color: Colors.black.withOpacity(0.1),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text('Listing Qouta',style: kAppDrawerTextStyling,),
                    Spacer(),
                    Text('Learn More',style: TextStyle(
                      color: Colors.blue,
                    ),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 1,
                      )]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text('0',style: kAppDrawerTextStyling.copyWith(
                              fontSize: 24,
                            ),),
                            SizedBox(height: MediaQuery.of(context).size.height*0.0050,),
                            Text('Available',style: kDividerTextStylling,),
                            SizedBox(height: MediaQuery.of(context).size.height*0.0050,),
                            CircleAvatar(backgroundColor: Colors.green,radius: 5,),
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*0.18,
                          width: MediaQuery.of(context).size.height*0.18,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                              width: 14,
                            ),
                            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.2,),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('0',style: kAppDrawerTextStyling.copyWith(
                              fontSize: 24,
                            ),),
                            SizedBox(height: MediaQuery.of(context).size.height*0.0050,),
                            Text('Used',style: kDividerTextStylling,),
                            SizedBox(height: MediaQuery.of(context).size.height*0.0050,),
                            CircleAvatar(backgroundColor: Colors.grey,radius: 5,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.info,color: Colors.black.withOpacity(0.3),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                    Text('4 free ads are for \"Rent\" and 1 free ad is for \"Sale\"'
                        ,style: TextStyle(
                        color: Colors.black.withOpacity(0.3),
                        fontFamily: 'Georgia',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(color: Colors.black.withOpacity(0.1),),
                SizedBox(height: 20,),
                Center(
                  child: Column(
                    children: [
                      Image.network('https://png.pngtree.com/element_origin_min_pic/17/06/26/9835aff3ba703374f852738f9d237776.jpg'
                          ,height: MediaQuery.of(context).size.height*0.3,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                      Text('Become a Premium User',style: kAppDrawerTextStyling,),
                      SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                      Text('Buy Premium listings Qouta and unlock'
                          ' maximum reach.Upgrade you Ads to Hot/Suoerhot to get '
                          'the deal done even faster!',style: kAppDrawerTextStyling.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),textAlign: TextAlign.center,),
                      SizedBox(height: MediaQuery.of(context).size.height*0.018,),
                      Container(
                        constraints: BoxConstraints(
                          maxHeight: double.infinity,
                          maxWidth: double.infinity,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(child: Text('Call Sales Center',style: kAppDrawerTextStyling.copyWith(
                            color: Colors.white,
                          ),),),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*0.018,),
                      Text('Learn More',style: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                      ),),
                      SizedBox(height: MediaQuery.of(context).size.height*0.2,),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
