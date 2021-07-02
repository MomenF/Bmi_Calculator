
import 'package:bmi/modules/bmihome.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

// TODO Variables
class _LoginPageState extends State<LoginPage> {
var emailController = TextEditingController();
var passwordController = TextEditingController();
bool dontShowPassword =  true;
var showIcon = Icons.visibility;
var formKey = GlobalKey<FormState>();
String UserName = "a";
String Password = "0";


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    appBar: AppBar(
    title: Text(
      'Login Page',
            ),
    backgroundColor: Colors.red,
    centerTitle: true,
    elevation: 0.0,
    ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Text(
                  'Login to our BMI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold

                  ),

                ),
                Image(
                  image:AssetImage('assets/images/bmi.png'),
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.fill ,
                ),
                SizedBox(
                  height: 20,
                ),
                /** Email Par**/
                Container(


                  child: TextFormField(
                    controller: emailController,
                    onChanged: (value){
                      print(value);
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email,color: Colors.redAccent,),

                      fillColor: Colors.cyanAccent,
                      focusColor: Colors.redAccent,
                      hoverColor: Colors.red,
                      filled: true,
                      labelText: 'Email Account',
                      border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,fontSize: 20),
                    ),
                    validator: (value){

                      if(value.isNotEmpty && value != UserName){
                            return "please Write The Correct UserName or email";
                      }else if(value.isEmpty){
                        return "This field Must not be Empty";
                      }
                      return null ;
                    },


                  ),
                ),
                /** Password Par**/
                SizedBox(
                  height: 20,
                ),
                Container(


                  child: TextFormField(
                    onChanged: (value){
                      print(value);
                    },
                    controller: passwordController,
                    obscureText: dontShowPassword ,
                    keyboardType: TextInputType.visiblePassword,
                    maxLength: 12,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock,color: Colors.redAccent,),
                      suffixIcon: IconButton(
                          icon: Icon(showIcon,color: Colors.grey,),
                        onPressed: (){
                            setState(() {

                            });
                          dontShowPassword = !dontShowPassword;
                          dontShowPassword?showIcon=Icons.visibility:showIcon=Icons.visibility_off ;
                        },
                      ),

                      fillColor: Colors.cyanAccent,
                      focusColor: Colors.redAccent,
                      hoverColor: Colors.red,
                      filled: true,
                      labelText: 'Password',
                      border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                          color: Colors.blue,fontSize: 20),
                    ),
                    validator: (value){

                      if(value.isNotEmpty && value != Password){
                        return "please Write The Correct UserName or email";
                      }else if(value.isEmpty){
                        return "This field Must not be Empty";
                      }
                      return null ;
                    },

                  ),
                ),
                /** Register Row**/
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have Account?",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                        fontSize: 20,
                    ),),
                    TextButton(
                        onPressed: (){},
                        child: Text('Register',style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          fontWeight: FontWeight.bold,
                              ),),)
                  ],
                ),
                /** Login Bar**/
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      if(formKey.currentState.validate()){
                        Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
                      }
                    },
                    child: Text('Login' , style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,

                    ),),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
