import 'package:flutter/material.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:zameen_pk/constants/constants.dart';

import 'home_screen.dart';
import 'login_page.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_rounded),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
          child: Column(
            children: [
              Text('Join Pakistan\'s\nBiggest Property portal',style: kAppDrawerTextStyling.copyWith(
                fontSize: 23,
              ), textAlign: TextAlign.center,),
              SizedBox(height: MediaQuery.of(context).size.height*0.06,),
              BannerCarousel(
                banners: BannerImages.listBanners,
                customizedIndicators: IndicatorModel.animation(
                    width: 20, height: 5, spaceBetween: 2, widthAnimation: 50),
                height:MediaQuery.of(context).size.height*0.2,
                activeColor: Colors.amberAccent,
                disableColor: Colors.white,
                animation: true,
                borderRadius: 10,
                onTap: (id) => print(id),
                width: 250,
                indicatorBottom: false,
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.06,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                child: Container(
                    height: MediaQuery.of(context).size.height*0.07,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network('https://1000logos.net/wp-content/uploads/2016/11/fb-logo.jpg'),
                        Text('Continue with Facebook',style: kAppDrawerTextStyling,),
                      ],
                    )
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                child: Container(
                    height: MediaQuery.of(context).size.height*0.07,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network('https://i.pinimg.com/736x/92/b6/c8/92b6c82469eba49abe6f2ad2b4865a87--logo-branding-logo-inspiration.jpg',
                          //width: MediaQuery.of(context).size.width*0.1,height:MediaQuery.of(context).size.width*1 ,
                        ),
                        Text('Continue with Google',style: kAppDrawerTextStyling,),
                      ],
                    )
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                child: Container(
                    height: MediaQuery.of(context).size.height*0.07,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       Icon(Icons.email,size: 40,),
                        Text('Continue with Email',style: kAppDrawerTextStyling,),
                      ],
                    )
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.07,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',style: kAppDrawerTextStyling.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    child: Text(' Sign In',style: kAppDrawerTextStyling.copyWith(
                      color: Colors.green,
                    ),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
class BannerImages {
  static const String banner1 =
      "https://zameenblog.s3.amazonaws.com/blog/wp-content/uploads/2015/11/cover-image-4-1.jpg";
  static const String banner2 =
      "https://d32b5joreyushd.cloudfront.net/media/uploads/2019/04/15/sell-property-in-india.jpg";
  static const String banner3 = "https://www.buyrealestateadvisors.com/wp-content/uploads/2018/09/Why-Greenwood-Homes-For-Sale-Could-Be-The-Ideal-Place-And-In-Which-Manner-1.png";
  static const String banner4 =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVFojGj4qEfdIckoEIZmuBsCYRpzjarvG2g6FgDTEP3GCduzejF3IWVnzkCQ5GO67BTwk&usqp=CAU";

  static List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];
}