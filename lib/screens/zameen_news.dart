import 'package:flutter/material.dart';
import 'package:zameen_pk/constants/constants.dart';
class ZameenNews extends StatelessWidget {
  const ZameenNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_rounded)),
        title: Text('Zameen News',style: kAppDrawerTextStyling.copyWith(
          fontSize: 26,
        ),),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){
        if(index==0){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text('Pakistan Property And Real Estate News By Zameen.com',style: kAppDrawerTextStyling.copyWith(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                ),),
                SizedBox(height: MediaQuery.of(context).size.height*0.030,),
                Container(
                  height: MediaQuery.of(context).size.height*0.25,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: NetworkImage('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/real-estate-house-sale-rental-property-ad-des-design-template-1c7f57cb016005cbf64f344a26ef3826_screen.jpg?ts=1644653261'),
                        fit: BoxFit.fill,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Al Rafi Heights excites buyers with its '
                            'prominent location on Islamabad...',style: kAppDrawerTextStyling.copyWith(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w500
                        ),),
                        Text('September 29,2022',style: kAppDrawerTextStyling.copyWith(
                          fontSize: 10,
                          color: Colors.white,
                        ),),
                        Container(
                          height: MediaQuery.of(context).size.height*0.050,
                          width:MediaQuery.of(context).size.width*0.2,
                          child: Center(child: Text('Read More',style: kAppDrawerTextStyling.copyWith(
                            color: Colors.white,
                            fontSize: 10,
                          ),),),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white,width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Center(child: Text('Top Stories',style: kAppDrawerTextStyling.copyWith(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),),),
                SizedBox(height: 40,),
                // ListView.builder(
                //     itemCount: 10,
                //     itemBuilder: (context,index){
                //   return MyCustomNewsContainer();
                // }),
              ],
            ),
          );
        }
        else{
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: MyCustomNewsContainer(),
          );
        }
      }),
    );
  }
}
class MyCustomNewsContainer extends StatelessWidget {
  const MyCustomNewsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.65,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network('https://idsb.tmgrup.com.tr/ly/uploads/images/2022/05/15/thumbs/800x531/205448.jpg?v=1652616234',
            fit: BoxFit.fill,height: MediaQuery.of(context).size.height*0.25,width: double.infinity,),
          SizedBox(height: MediaQuery.of(context).size.height*0.015,),
          Divider(thickness: 1,color: Colors.black.withOpacity(0.2),),
          SizedBox(height: MediaQuery.of(context).size.height*0.015,),
          Text('Turkey to start work on Pak\'s first '
              'skyscrapper on Ferozepur Road, LHR',style: kAppDrawerTextStyling.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 27,
          ),),
          SizedBox(height: MediaQuery.of(context).size.height*0.005,),
          Text('September 30,2022',style: TextStyle(
            color: Colors.black.withOpacity(0.6),
          ),),
          SizedBox(height: MediaQuery.of(context).size.height*0.005,),
          Text('This real-estate company owns a unique name in the world of real-estate developers. '
              'Their dedication and skillset are trustworthy as they have '
              'delivered brilliant quality of work while working on the '
              'widely successful mega-project of Nova....',style: TextStyle(
            color: Colors.black.withOpacity(0.7),
          ),),
          Spacer(),
          Text('See more ->',style:TextStyle(
            fontWeight: FontWeight.w700,
          ),)
        ],
      ),
    );
  }
}
