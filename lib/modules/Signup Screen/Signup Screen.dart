import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:speakup/internet/build_offline_builder.dart';
import 'package:speakup/modules/Cartoons/Cartoon.dart';
import 'package:speakup/modules/Home%20Screen/HomeScreen.dart';

import '../../transition.dart';
import '../Advice Screen/AdviceScreen.dart';
import '../Login Screen/LoginScreen.dart';

import 'package:firebase_core/firebase_core.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmpasswordController = TextEditingController();
  var signUp = GlobalKey<FormState>();
  bool pass = true;
  bool pass2 = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: BuildOfflineBuilder(
            screen: Scaffold(
                backgroundColor: Colors.white,
                body: SingleChildScrollView(
                    child: Container(
                        child: Form(
                  key: signUp,
                  child: Container(
                    color: Colors.white,
                    child: Column(children: [
                      Stack(
                        children: [
                          Container(
                            color: Colors.orange,
                            height: 100,
                            width: double.infinity,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                  topStart: Radius.circular(30),
                                  topEnd: Radius.circular(30)),
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(top: 80),
                            width: double.infinity,
                            height: 30,
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 100),
                              child: Center(
                                child: DefaultTextStyle(
                                    style: TextStyle(
                                        shadows: [
                                          Shadow(
                                              color: Colors.orange,
                                              blurRadius: 1)
                                        ],
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    child: AnimatedTextKit(
                                      animatedTexts: [
                                        WavyAnimatedText('Speak Up'),
                                      ],
                                      repeatForever: true,
                                      isRepeatingAnimation: true,
                                    )),
                              )),
                        ],
                      ),
                      SizedBox(height: 40),
                      Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            child: Column(children: [
                              TextFormField(
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                onFieldSubmitted: (value) {
                                  print(value);
                                },
                                decoration: InputDecoration(
                                  labelText: 'البريد الإلكترونى',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.email),
                                  suffixText: '@gmail.com',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'لا يجب أن يكون البريد الالكترونى فارغ';
                                  }
                                  if (!value.endsWith('@gmail.com')) {
                                    return '  (@gmail.com) يجب أن تكتب  ';
                                  }
                                  if (value == "@gmail.com") {
                                    return 'البريد الالكترونى غير صالح';
                                  }

                                  return null;
                                },
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                controller: passwordController,
                                keyboardType: TextInputType.emailAddress,
                                obscureText: pass,
                                decoration: InputDecoration(
                                    labelText: ' الرقم السرى',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          pass = !pass;
                                        });
                                        if (signUp.currentState!.validate()) {
                                          print(emailController.text);
                                          print(passwordController.text);
                                        }
                                        ;
                                      },
                                      icon: Icon(Icons.remove_red_eye),
                                    )),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'لا يجب أن يكون الرقم السرى فارغ';
                                  } else if (value.length <= 6) {
                                    return 'يجب أن تكتب سبعة عناصر على الاقل';
                                  }

                                  return null;
                                },
                              ),
                              SizedBox(height: 20),
                              // TextFormField(
                              //  controller: confirmpasswordController,
                              //  keyboardType: TextInputType.emailAddress,
                              //  obscureText: pass2,
                              //  decoration: InputDecoration(
                              //      labelText: 'تاكيد الرقم السرى',
                              //      border: OutlineInputBorder(),
                              //      prefixIcon: Icon(Icons.lock),
                              //     suffixIcon: IconButton(
                              //       onPressed: () {
                              //           setState(() {
                              //            pass2 = !pass2;
                              //          });
                              //        },
                              //        icon: Icon(Icons.remove_red_eye),
                              //      )),
                              //  validator: (value) {
                              //    if (value!.isEmpty) {
                              //      return 'لا يجب ان يكون الرقم السرى فارغ ';
                              //    }

                              //    return null;
                              //  },
                              // ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                height: 45,
                                child: MaterialButton(
                                  splashColor:
                                      Color.fromARGB(255, 202, 124, 36),
                                  onPressed: () {
                                    UserRegistre();
                                    if (signUp.currentState!.validate()) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomeScreen2(),
                                        ),
                                      );
                                    }
                                  },
                                  child: Text(
                                    'إنشاء حساب جديد',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.orange,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     CircleAvatar(
                              //       radius: 13.0,
                              //       child: Image.asset(
                              //         'images/f.png',
                              //         fit: BoxFit.fill,
                              //       ),
                              //     ),
                              //     TextButton(
                              //         onPressed: () {},
                              //         child: Text(
                              //           'الفيس بوك',
                              //           style: TextStyle(
                              //               color: Colors.black,
                              //               fontWeight: FontWeight.bold,
                              //               fontSize: 15),
                              //         )),
                              //     Text('تسجيل الدخول عن طريق '),
                              //   ],
                              //),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: CircleAvatar(
                                      radius: 13.0,
                                      child: Image.asset(
                                        'images/google.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () async {
                                        await GoogleRegister();
                                        if (FirebaseAuth.instance.currentUser !=
                                            null) {
                                          print(
                                              'Your login with google is done.');
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  HomeScreen2(),
                                            ),
                                          );
                                        }
                                      },
                                      child: Text(
                                        'جوجل',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )),
                                  Text("تسجيل الدخول عن طريق"),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  MaterialButton(
                                      color: Colors.grey[200],
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => HomeScreen2(),
                                          ),
                                        );
                                      },
                                      child: Text("تخطى",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15))),
                                  MaterialButton(
                                      color: Colors.orange,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          myPageTransition(
                                            // Page Transition -> Fade
                                            LogInScreen(),
                                          ),
                                        );
                                      },
                                      child: Text("تسجيل الدخول",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15))),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    child: Image(
                                      fit: BoxFit.cover,
                                      height: 50,
                                      width: 100,
                                      image: AssetImage(
                                          'images/Picsart_22-10-02_17-51-48-614.jpg'),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ))
                    ]),
                  ),
                ))))));
  }

  // Creatr account
  void UserRegistre() async {
    try {
      final Credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);
      print('Your sigin is done.');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LogInScreen(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exist.');
      } else {
        print('Please write the correct format');
      }
    } catch (e) {
      print(e);
    }
  }
// Create account with google

  Future<UserCredential> GoogleRegister() async {
    final GoogleSignInAccount? GoogleUser = await GoogleSignIn()
        .signIn(); // The user will choose his account of google
    final GoogleSignInAuthentication? GoogleAuth = await GoogleUser
        ?.authentication; // googleAuth will take the information of the account of the user
    final Credential = GoogleAuthProvider.credential(
        // By the credential the siginin will connect with the firebase
        accessToken: GoogleAuth?.accessToken,
        idToken: GoogleAuth?.idToken);

    // if (FirebaseAuth.instance.currentUser != null) {
    //    print('Your login with google is done.');

    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => HomeScreen2(),
    //     ),
    //   );
    // }

    return await FirebaseAuth.instance.signInWithCredential(Credential);
  }
}
