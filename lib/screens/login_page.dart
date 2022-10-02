import 'package:flutter/material.dart';
import 'package:zameen_pk/constants/constants.dart';
import 'package:zameen_pk/screens/home_screen.dart';
import 'package:zameen_pk/screens/signup_screen.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login to Zameen.com',style: kAppDrawerTextStyling.copyWith(
              fontSize: 28,
            ),),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.07,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(0.1)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.07,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(0.1)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(Icons.visibility),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Row(
              children: [
                Spacer(),
                Text('Forget Password?',style: kDividerTextStylling.copyWith(
                  color: Colors.red.withOpacity(0.4),
                ),)
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.04,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height*0.07,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Sign In',style: kAppDrawerTextStyling.copyWith(
                  color: Colors.white,
                ),),),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Divider(
                      thickness: 1,
                    ),
                  ),

                  Text('    OR   ',style: kDividerTextStylling,),

                  Expanded(
                    flex: 1,
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                ]
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
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
            SizedBox(height: MediaQuery.of(context).size.height*0.07,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Need an Account?',style: kAppDrawerTextStyling.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                  },
                  child: Text(' Sign Up',style: kAppDrawerTextStyling.copyWith(
                    color: Colors.green,
                  ),),
                )
              ],
            )
            
          ],
      ),
        ),),
    );
  }
}
