// ignore_for_file: deprecated_member_use, must_call_super

import 'package:flutter/material.dart';
import '../../components/custom_stack.dart';
import '../../components/custom_text_field.dart';
import '../../home.dart';
import '../../provider/model_hud.dart';
import '../../services/auth.dart';
import '../../services/theme.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  String _email, _password;

  final _auth = Auth();

  bool isAdmin = false;

  final adminPassword = 'Admin1234';

  @override
  void initState() {
//    Firebase.initializeApp
  }

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: purpleColor,
//      appBar: AppBar(
//        title: Text('E Commerce'),
//        leading: IconButton(
//          icon: Icon(Icons.menu),
//          onPressed: () {},
//        ),
//      ),
//      body: ModalProgressHUD(
//        inAsyncCall: Provider.of<ModelHud>(context).isLoading,
//        child: Form(),
//      ),
      body: Form(
        key: _globalKey,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            CustomStack(
              heightScreen: heightScreen,
              title: 'Buy it',
              assetImage: 'assets/icon/icon_app.png',
            ),
            SizedBox(
              height: heightScreen * 0.05,
            ),
            CustomTextField(
              hint: 'Enter your email',
              errVal: 'email is empty',
              icon: Icons.email,
              onClick: (value) {
                _email = value;
              },
            ),
            SizedBox(
              height: heightScreen * 0.02,
            ),
            CustomTextField(
              hint: 'Enter your password',
              errVal: 'password is empty',
              icon: Icons.lock,
              onClick: (value) {
                _password = value;
              },
            ),
            SizedBox(
              height: heightScreen * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110.0),
              child: Builder(
                builder: (context) => FlatButton(
                    height: 55,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Colors.lightGreen,
                    onPressed: () {
                      _validate(context);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: heightScreen * 0.05,
            ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
////                  Text(
////                    'Don\'t have an acount ? ',
////                    style: TextStyle(
//////                      color: Colors.white,
////                      fontSize: 16.0,
////                    ),
////                  ),
//                  GestureDetector(
//                    onTap: () {
////                      Navigator.pushNamed(context, RegisterScreen.id);
//                    },
//                    child: Text(
//                      'Sign up',
//                      style: TextStyle(
//                        fontSize: 16.0,
//                        fontWeight: FontWeight.bold,
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//              Padding(
//                padding: const EdgeInsets.symmetric(
//                  horizontal: 30,
//                  vertical: 10,
//                ),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Expanded(
//                      child: GestureDetector(
//                        onTap: () {
//                          Provider.of<AdminMode>(
//                            context,
//                            listen: false,
//                          ).changIsAdmin(true);
//                        },
//                        child: Text(
//                          'I\'m an admin',
//                          style: TextStyle(
//                            color: Provider.of<AdminMode>(context).isAdmin
//                                ? kPrimaryLightColor
//                                : Colors.black,
//                          ),
//                        ),
//                      ),
//                    ),
//                    Expanded(
//                      child: GestureDetector(
//                        onTap: () {
//                          Provider.of<AdminMode>(
//                            context,
//                            listen: false,
//                          ).changIsAdmin(false);
//                        },
//                        child: Text(
//                          'I\'m a user',
//                          style: TextStyle(
//                            // not isAdmin
//                            color: !(Provider.of<AdminMode>(context).isAdmin)
//                                ? kPrimaryLightColor
//                                : Colors.black,
//                          ),
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
          ],
        ),
      ),
    );
  }

  void _validate(BuildContext context) async {
//    final modelHud = Provider.of<ModelHud>(context, listen: false);
//    modelHud.changIsLoading(true);
    if (_globalKey.currentState.validate()) {
      _globalKey.currentState.save();
      if (_password == adminPassword) {
        try {
          await _auth.signIn(_email, _password).then((value) {
            print(value);
          });
//          modelHud.changIsLoading(false);
          Navigator.pushNamed(context, Home.routeName);
        } catch (e) {
//          modelHud.changIsLoading(false);
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text(
                e.message,
              ),
            ),
          );
        }
      } else {
        try {
          await _auth.signIn(_email, _password);
//        modelHud.changIsLoading(false);
          Navigator.pushNamed(context, Home.routeName);
        } catch (e) {
//        modelHud.changIsLoading(false);
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text(
                e.message,
              ),
            ),
          );
        }
      }
    }
    else {
//        modelHud.changIsLoading(false);
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Somthing went wrong !",
          ),
        ),
      );
    }
//    modelHud.changIsLoading(false);
  }
}
