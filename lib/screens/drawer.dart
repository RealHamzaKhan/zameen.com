import 'package:flutter/material.dart';
import 'package:zameen_pk/constants/constants.dart';
import 'package:zameen_pk/screens/home_screen.dart';
import 'package:zameen_pk/screens/search_screen.dart';

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
              MyListTile(Icons.favorite, 'Favourites'),
              MyListTile(Icons.save, 'Saved Searches'),
              MyListTile(Icons.place, 'Plot Finder'),
              MyListTile(Icons.newspaper, 'Zameen News'),
              MyListTile(Icons.messenger, 'Zameen Blog'),
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
              MyListTile(Icons.add_home_work_sharp, 'My Properties'),
              MyListTile(Icons.drafts_outlined, 'Drafts'),
              MyListTile(Icons.watch_later_outlined, 'Qouta and Credits'),
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
              MyListTile(Icons.settings, 'Settings'),
              MyListTile(Icons.info_outline, 'About Us'),
              MyListTile(Icons.phone, 'Contact Us'),
              MyListTile(Icons.policy, 'Terms and privacy Policy'),
              MyListTile(Icons.logout_outlined, 'Log Out'),
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
