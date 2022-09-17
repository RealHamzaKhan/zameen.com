import 'package:flutter/material.dart';
import 'package:zameen_pk/constants/constants.dart';
import 'package:zameen_pk/screens/drawer.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:zameen_pk/screens/new_projects.dart';
class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text('Favourites & Saved',style: kAppDrawerTextStyling.copyWith(
              fontSize: 27,
              fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.015,),
          Expanded(
            child: Container(
              // height: double.infinity,
             // width: double.infinity,
              child: ContainedTabBarView(
                tabBarProperties: TabBarProperties(
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.black.withOpacity(0.4),
                  height: 50,
                  indicatorWeight: 8,
                ),
                  tabs: [Text('Favourites',style: kAppDrawerTextStyling.copyWith(
                    color: Colors.black,
                  ),),
                    Text('Saved Searches',style: kAppDrawerTextStyling.copyWith(
                      color: Colors.black
                    ),)],
                  views: [
                    Expanded(
                      child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context,index){
                        return Column(
                          children: [
                            NewProjectsCustomContainers(),
                            SizedBox(height: 20,),
                          ],
                        );
                      }),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 30),
                          child: Container(
                            decoration: kContainerListDecoration.copyWith(
                                color: Colors.white
                            ),
                            height: MediaQuery.of(context).size.height*0.2,
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('My Search',style: kAppDrawerTextStyling,),
                                  SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                                  Text('Rent | Home'),
                                  Divider(thickness: 1,),
                                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                  Row(
                                    children: [
                                      Icon(Icons.room,color: Colors.black.withOpacity(0.4),size: 15,),
                                      SizedBox(width: 3,),
                                      Text('Lahore'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    )

                  ]
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(3),
    );
  }
}
