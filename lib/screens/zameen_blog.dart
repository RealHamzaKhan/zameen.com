import 'package:flutter/material.dart';
import 'package:zameen_pk/constants/constants.dart';
import 'package:zameen_pk/screens/zameen_news.dart';
class ZameenBlog extends StatelessWidget {
  const ZameenBlog({Key? key}) : super(key: key);

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
        title: Text('Zameen Blog',style: kAppDrawerTextStyling.copyWith(
          fontSize: 26,
        ),),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){
            if(index==0){
              return Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.25,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage('https://img.freepik.com/premium-vector/city-buildings-3d-set_163454-181.jpg?w=1060'),
                          fit: BoxFit.fill,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Top Apartment Projects for Investment in Karachi',style: kAppDrawerTextStyling.copyWith(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w500
                          ),),
                          Container(
                            constraints: BoxConstraints(
                              maxHeight: double.infinity,
                              maxWidth: double.infinity,
                            ),
                            color: Colors.green,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 2),
                              child: Text('Real Estate Trends',style: kAppDrawerTextStyling.copyWith(
                                fontSize: 12,
                                color: Colors.white,
                              ),),
                            ),
                          ),
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
                  // ListView.builder(
                  //     itemCount: 10,
                  //     itemBuilder: (context,index){
                  //   return MyCustomNewsContainer();
                  // }),
                ],
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
