import 'package:flutter/material.dart';
import 'package:zameen_pk/constants/constants.dart';
import 'package:zameen_pk/screens/about_us.dart';
import 'package:zameen_pk/screens/contact_us.dart';
import 'package:zameen_pk/screens/favourites_screen.dart';
import 'package:zameen_pk/screens/home_screen.dart';
import 'package:zameen_pk/screens/login_page.dart';
import 'package:zameen_pk/screens/my_properties.dart';
import 'package:zameen_pk/screens/plot_finder.dart';
import 'package:zameen_pk/screens/qouta_credits.dart';
import 'package:zameen_pk/screens/search_screen.dart';
import 'package:zameen_pk/screens/settings_screen.dart';
import 'package:zameen_pk/screens/terms_privacy_policy.dart';
import 'package:zameen_pk/screens/zameen_blog.dart';
import 'package:zameen_pk/screens/zameen_news.dart';

import 'logged_in_screen.dart';
import 'new_projects.dart';
class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Image(image: AssetImage('images/Zameen.png'),height: 120,width: 200,),
              Text(
                'Hamza Raziq Khan',
                style: kAppDrawerTextStyling,
              ),
              SizedBox(height: 5,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoggedInScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('View Profile',style: kAppDrawerTextStyling.copyWith(color: Colors.green),),
                    Icon(Icons.arrow_forward,color: Colors.green,),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Divider(
                thickness: 1,
                color: Colors.grey.withOpacity(0.2),
              ),
              SizedBox(height: 5,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                  child: MyListTile(Icons.home_filled, 'Home')),
              MyListTile(Icons.add, 'Add Property'),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
                  },
                  child: MyListTile(Icons.search, 'Search Properties')),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NewProjects()));
                  },
                  child: MyListTile(Icons.home_work_outlined, 'New Projects')),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouritesScreen()));
                  },
                  child: MyListTile(Icons.favorite, 'Favourites')),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouritesScreen()));
                  },
                  child: MyListTile(Icons.save, 'Saved Searches')),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PlotFinder()));
                  },
                  child: MyListTile(Icons.place, 'Plot Finder')),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ZameenNews()));
                  },
                  child: MyListTile(Icons.newspaper, 'Zameen News')),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ZameenBlog()));
                  },
                  child: MyListTile(Icons.messenger, 'Zameen Blog')),
              SizedBox(height: 5,),
              Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Divider(
                        thickness: 1,
                      ),
                    ),

                    Text('PROPERTIES AND QOUTA',style: kDividerTextStylling,),

                    Expanded(
                      flex: 3,
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                  ]
              ),
              SizedBox(height: 5,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProperties()));
                  },
                  child: MyListTile(Icons.add_home_work_sharp, 'My Properties')),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProperties()));
                  },
                  child: MyListTile(Icons.drafts_outlined, 'Drafts')),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>QoutaCredits()));
                  },
                  child: MyListTile(Icons.watch_later_outlined, 'Qouta and Credits')),
              SizedBox(height: 5,),
              Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Divider(
                        thickness: 1,
                      ),
                    ),

                    Text('App Controls',style: kDividerTextStylling,),

                    Expanded(
                      flex: 5,
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                  ]
              ),
              MyListTile(Icons.language_outlined, 'English'),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsScreen()));
                  },
                  child: MyListTile(Icons.settings, 'Settings')),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUs()));
                  },
                  child: MyListTile(Icons.info_outline, 'About Us')),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUs()));
                  },
                  child: MyListTile(Icons.phone, 'Contact Us')),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TermAndPrivacyPolicy()));
                  },
                  child: MyListTile(Icons.policy, 'Terms and privacy Policy')),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                  child: MyListTile(Icons.logout_outlined, 'Log Out')),
              SizedBox(height: 10,),
              Text('App Version 3.16.13'),
            ],
          ),
        ],
      ),
    );
  }
}
class MyListTile extends StatelessWidget {
  IconData icon;
  String text;
  MyListTile(@required this.icon,@required this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,color: Colors.green,),
      title: Text(text,style: kAppDrawerTextStyling,),
    );
  }
}
