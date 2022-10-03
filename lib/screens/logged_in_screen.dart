import 'package:flutter/material.dart';
import 'package:zameen_pk/constants/constants.dart';
import 'package:zameen_pk/screens/contact_us.dart';
import 'package:zameen_pk/screens/drawer.dart';
import 'package:zameen_pk/screens/favourites_screen.dart';
import 'package:zameen_pk/screens/login_page.dart';
import 'package:zameen_pk/screens/my_properties.dart';
import 'package:zameen_pk/screens/qouta_credits.dart';
import 'package:zameen_pk/screens/settings_screen.dart';
import 'package:zameen_pk/screens/terms_privacy_policy.dart';
class LoggedInScreen extends StatelessWidget {
  const LoggedInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white.withOpacity(0.80),
        elevation: 0.001,
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Profile',style: kAppDrawerTextStyling.copyWith(
                  fontSize: 35,
                ),),
                SizedBox(height: 15,),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsScreen()));
                            },
                            child: ProfileCustomContainer(Icons.settings, 'Profile\nSettings')),
                        SizedBox(height: 10,),
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProperties()));
                            },
                            child: ProfileCustomContainer(Icons.home_work_outlined, 'My\nProperties')),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouritesScreen()));
                            },
                            child: ProfileCustomContainer(Icons.search_rounded, 'My Saved\nSearches')),
                        SizedBox(height: 10,),
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProperties()));
                            },
                            child: ProfileCustomContainer(Icons.drafts, 'Drafts')),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouritesScreen()));
                            },
                            child: ProfileCustomContainer(Icons.favorite, 'My\nFavourites')),
                        SizedBox(height: 10,),
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>QoutaCredits()));
                            },
                            child: ProfileCustomContainer(Icons.pie_chart, 'Qouta and\nCredits')),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.25,
                  decoration: kContainerListDecoration,
                  child: Padding(
                    padding: const EdgeInsets.only(top:25.0,right:25,left:25,bottom:3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),fit: BoxFit.fill)
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text('Looking to sell or rent\nout your property?',style: kAppDrawerTextStyling,),
                          ],
                        ),
                        SizedBox(height:10),
                        Container(
                          height: MediaQuery.of(context).size.height*0.06,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.25),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Center(
                              child: Text('Post an Ad',style: kAppDrawerTextStyling.copyWith(
                                color: Colors.green,
                              ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(Icons.language_outlined,color: Colors.black.withOpacity(0.5),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.060,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Language'),
                        Text('English',style: TextStyle(
                          color: Colors.green,
                        ),),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,size: 15,),
                  ],
                ),
                SizedBox(height: 7,),
                Divider(color: Colors.grey.withOpacity(0.3),thickness: 0.7,),
                SizedBox(height: 7,),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUs()));
                    },
                    child: ProfileCustomRow(Icons.phone, 'Contact Us')),
                SizedBox(height: 7,),
                Divider(color: Colors.grey.withOpacity(0.3),thickness: 0.7,),
                SizedBox(height: 7,),
                ProfileCustomRow(Icons.thumb_up, 'Feedback'),
                SizedBox(height: 7,),
                Divider(color: Colors.grey.withOpacity(0.3),thickness: 0.7,),
                SizedBox(height: 7,),
                ProfileCustomRow(Icons.insert_invitation_outlined, 'Invite Friends to Zameen'),
                SizedBox(height: 7,),
                Divider(color: Colors.grey.withOpacity(0.3),thickness: 0.7,),
                SizedBox(height: 7,),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>TermAndPrivacyPolicy()));
                    },
                    child: ProfileCustomRow(Icons.policy, 'Terms and Privacy Policy')),
                SizedBox(height: 7,),
                Divider(color: Colors.grey.withOpacity(0.3),thickness: 0.7,),
                SizedBox(height: 7,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.logout_outlined,color: Colors.red,),
                      SizedBox(width: MediaQuery.of(context).size.width*0.060,),
                      Text('Log Out',style: kAppDrawerTextStyling.copyWith(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.w400,
                      ),),

                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Icon(Icons.info_outline,color: Colors.black.withOpacity(0.5)),
                    SizedBox(width: MediaQuery.of(context).size.width*0.030,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('App Version',style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 12,
                        ),),
                        Text('3.7.7.1',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 25,),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(4),
    );
  }
}
class ProfileCustomContainer extends StatelessWidget {
  IconData myIcon;
  String title;
  ProfileCustomContainer(@required this.myIcon,@required this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.18,
      width: MediaQuery.of(context).size.width*0.30,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          offset: Offset(2, 1),
        )],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(myIcon,color: Colors.green.withOpacity(0.6),size: 40,),
          Text(title,style:kAppDrawerTextStyling.copyWith(
              fontWeight: FontWeight.w500,
              fontSize:15
          ),textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
class ProfileCustomRow extends StatelessWidget {
  IconData myIcon;
  String title;
  ProfileCustomRow(@required this.myIcon,@required this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(myIcon,color: Colors.black.withOpacity(0.5),),
        SizedBox(width: MediaQuery.of(context).size.width*0.060,),
        Text(title,style: kAppDrawerTextStyling.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),),
        Spacer(),
        Icon(Icons.arrow_forward_ios,size: 15,),
      ],
    );
  }
}
