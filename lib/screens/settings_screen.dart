import 'package:flutter/material.dart';
import 'package:zameen_pk/constants/constants.dart';
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String dropdownvalue = 'PKR';
  String areaDropDownValue='sq.ft';
  String langDropDownValue='English';
  var items = [
    'PKR',
    'CAD',
    'SAR',
    'AED',
    'GBP',
    'USD',
  ];
  var areaItems=[
    'sq.m',
    'sq.ft',
    'sq.yd',
    'Marla',
    'Kanal'
  ];
  var lanItems=['English','Urdu'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_rounded)),
        title: Text('Profile Settings',style: kAppDrawerTextStyling.copyWith(
          fontSize: 25,
        ),),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Hamza Raziq Khan',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              TextFormField(
                enabled: false,
                decoration: InputDecoration(
                  //labelText: 'Email Address',
                  hintText: 'zeeshankhan6669@gmail.com',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Divider(color: Colors.black.withOpacity(0.1),),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red,width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.mobile_friendly,color: Colors.black.withOpacity(0.4),),
                      SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                      Image.network('https://cdn.britannica.com/46/3346-004-D3BDE016/flag-symbolism-Pakistan-design-Islamic.jpg'),
                      SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                      VerticalDivider(color: Colors.black.withOpacity(0.1),thickness: 2,),
                      Container(
                          height: MediaQuery.of(context).size.height*1,
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: TextField(decoration: InputDecoration(
                            hintText: '3xx xxxxxxxx',
                              contentPadding: EdgeInsets.only(top: 10,bottom: 10,left: 15),
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black.withOpacity(0.1),width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.call,color: Colors.black.withOpacity(0.4),),
                      SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                      Image.network('https://cdn.britannica.com/46/3346-004-D3BDE016/flag-symbolism-Pakistan-design-Islamic.jpg'),
                      SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                      VerticalDivider(color: Colors.black.withOpacity(0.1),thickness: 2,),
                      Container(
                          height: MediaQuery.of(context).size.height*1,
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: TextField(decoration: InputDecoration(
                            hintText: '3xx xxxxxxxx',
                            contentPadding: EdgeInsets.only(top: 10,bottom: 10,left: 15),
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Divider(color: Colors.black.withOpacity(0.1),),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.08,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.2),),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text('Currency',style: kAppDrawerTextStyling,),
                      Spacer(),
                      DropdownButton(
                        value: dropdownvalue,
                        items: items.map((String items){
                          return DropdownMenuItem(
                            child: Text(items),
                            value: items,);
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.08,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.2),),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text('Area',style: kAppDrawerTextStyling,),
                      Spacer(),
                      DropdownButton(
                        value: areaDropDownValue,
                        items: areaItems.map((String areaItems){
                          return DropdownMenuItem(
                            child: Text(areaItems),
                            value: areaItems,);
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            areaDropDownValue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.08,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.2),),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text('Language',style: kAppDrawerTextStyling,),
                      Spacer(),
                      DropdownButton(
                        value: langDropDownValue,
                        items: lanItems.map((String lanItems){
                          return DropdownMenuItem(
                            child: Text(lanItems),
                            value: lanItems,);
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            langDropDownValue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Divider(color: Colors.black.withOpacity(0.1),),
              SizedBox(height: 20,),
              Text('Account Settings',style: kDividerTextStylling.copyWith(
                fontSize: 23,
              ),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Delete this account',style: kAppDrawerTextStyling,),
                      SizedBox(height: 7,),
                      Text('If you delete your account,\nyour listing(s) will'
                          ' be removed',style: kAppDrawerTextStyling.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.5),
                      ),),
                    ],
                  ),
                  Spacer(),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: double.infinity,
                      maxHeight: double.infinity
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red,width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.delete_forever_outlined,color: Colors.red,),
                          Text('Delete',style: kAppDrawerTextStyling.copyWith(
                            color: Colors.red,
                          ),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Update Profile',style: kAppDrawerTextStyling.copyWith(
                  color: Colors.white
                ),),),
              )
            ],
          ),
        ),
    ],
      ),
    );
  }
}
