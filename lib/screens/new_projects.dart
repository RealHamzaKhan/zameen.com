import 'package:flutter/material.dart';
import 'package:zameen_pk/constants/constants.dart';
import 'package:zameen_pk/screens/drawer.dart';
class NewProjects extends StatelessWidget {
  const NewProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Projects'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [
          SizedBox(height: 5,),
          Container(
            width: double.infinity,
            height: 40,
            decoration: kContainerListDecoration.copyWith(
              borderRadius: BorderRadius.circular(0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Text('Showing you projects\nfound in Pakistan'),
                  Spacer(),
                  Icon(Icons.sort,color: Colors.blue,),
                  Text('Sort'),
                  SizedBox(width: 7,),
                  Container(
                    height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Row(
                        children: [
                          Icon(Icons.filter_list_outlined,color: Colors.white,
                          size: 20,),
                          Text('Filters',style: TextStyle(
                            color: Colors.white,
                            fontSize: 12
                          ),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(itemCount: 30,itemBuilder: (context,index){
              return Column(
                children: [
                  NewProjectsCustomContainers(),
                  SizedBox(height: 10,),
                ],
              );
            }),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(1),
    );
  }
}
class NewProjectsCustomContainers extends StatelessWidget {
  const NewProjectsCustomContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.19,
      width: double.infinity,
      decoration: kContainerListDecoration.copyWith(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.network('https://cdn.pixabay.com/photo/2017/07/08/02/16/house-2483336_960_720.jpg',
              fit: BoxFit.fitHeight,
              width: MediaQuery.of(context).size.width*0.35,
              height: MediaQuery.of(context).size.height*1,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Cloud Tower-1',style: kAppDrawerTextStyling.copyWith(
                      color: Colors.blue,
                      fontSize: 15
                  ),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0050,),
                  Text('MPCHS-Multi Gardens, Islamabad',style: kDividerTextStylling.copyWith(
                      fontSize: 14
                  ),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  Text('Contact for price',style: kAppDrawerTextStyling,),
                  Spacer(),
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.050,
                        width: MediaQuery.of(context).size.width*0.13,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.green),
                        ),
                        child: Center(
                          child: Text('EMAIL',style: kAppDrawerTextStyling.copyWith(
                              fontSize: 14,
                              color: Colors.green
                          ),),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                      Container(
                        height: MediaQuery.of(context).size.height*0.050,
                        width: MediaQuery.of(context).size.width*0.13,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.green),
                        ),
                        child: Center(
                          child: Text('CALL',style: kAppDrawerTextStyling.copyWith(
                            fontSize: 14,
                            color: Colors.white,
                          ),),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                      Container(
                        height: MediaQuery.of(context).size.height*0.050,
                        width: MediaQuery.of(context).size.width*0.13,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.green),
                        ),
                        child: Center(
                          child: Text('SMS',style: kAppDrawerTextStyling.copyWith(
                              fontSize: 14,
                              color: Colors.green
                          ),),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                      Container(
                        height: MediaQuery.of(context).size.height*0.050,
                        width: MediaQuery.of(context).size.width*0.13,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.green),
                        ),
                        child: Center(
                          child: Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/512/3670/3670051.png'),height: 20,),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
