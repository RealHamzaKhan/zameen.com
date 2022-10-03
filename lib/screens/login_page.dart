import 'package:flutter/material.dart';
import 'package:zameen_pk/constants/constants.dart';
import 'package:zameen_pk/screens/home_screen.dart';
import 'package:zameen_pk/screens/signup_screen.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool loginEye=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30),
          child: SingleChildScrollView(
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
                    obscureText: loginEye,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: GestureDetector(
                          onTap: (){
                            setState(() {
                              loginEye==true?loginEye=false:loginEye=true;
                            });
                          },
                          child: Icon(loginEye==true?Icons.visibility:Icons.visibility_off)),
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
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width*0.08,),
                      Image.asset('images/facebook.png',height: MediaQuery.of(context).size.height*0.04,),
                      SizedBox(width: MediaQuery.of(context).size.width*0.08,),
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
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width*0.08,),
                        Image.asset('images/google.png',height: MediaQuery.of(context).size.height*0.04,),
                        SizedBox(width: MediaQuery.of(context).size.width*0.08,),
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
          ),
        ),),
    );
  }
}
