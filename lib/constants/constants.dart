import 'package:flutter/material.dart';
import 'package:zameen_pk/screens/home_screen.dart';
import 'package:zameen_pk/screens/logged_in_screen.dart';

import '../screens/favourites_screen.dart';
import '../screens/new_projects.dart';
import '../screens/search_screen.dart';

const kAppDrawerTextStyling=TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  fontFamily: 'Georgia',

);
TextStyle kDividerTextStylling=TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  fontFamily: 'Georgia',
  color: Colors.grey.withOpacity(0.8),
);
BoxDecoration kContainerListDecoration=BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
    boxShadow: [BoxShadow(
      blurRadius: 10,
      offset: Offset(1, 2),
      color: Colors.grey,
    )]
);

class CustomNavigationBar extends StatelessWidget {
  int index;
  CustomNavigationBar(@required this.index);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(selectedItemColor: Colors.green,unselectedItemColor: Colors.black,
        currentIndex: index,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
            color: Colors.green
        ),
        unselectedLabelStyle: TextStyle(
            color: Colors.black
        ),
        items: [
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
              child: Icon(Icons.home)),label: 'Home'),
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NewProjects()));
              },
              child: Icon(Icons.home_work_outlined)),label: 'Projects'),
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
              },
              child: Icon(Icons.search)),label: 'Search'),
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouritesScreen()));
              },
              child: Icon(Icons.favorite_outline)),label: 'Favourites'),
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoggedInScreen()));
              },
              child: Icon(Icons.person)),label: 'Profile'),
        ]);
  }
}
Color searchIconColor=Colors.grey.withOpacity(0.7);
const addPropertyDivider=Padding(
  padding: const EdgeInsets.only(left: 40.0),
  child: Divider(thickness: 1,),
);
