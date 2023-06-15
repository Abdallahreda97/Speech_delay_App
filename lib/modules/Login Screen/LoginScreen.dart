import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
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
import '../Signup Screen/Signup Screen.dart';

class PasswordStrengthChecker {
  static bool isPasswordStrong(String password) {
    return password.length >=
            8 && // Password must be at least 8 characters long
        RegExp(r'[A-Z]').hasMatch(
            password) && // Password must contain at least one uppercase letter
        RegExp(r'[a-z]').hasMatch(
            password) && // Password must contain at least one lowercase letter
        RegExp(r'[0-9]')
            .hasMatch(password) && // Password must contain at least one number
        RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(
            password); // Password must contain at least one special character
  }
}

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  var emailController2 = TextEditingController();
  var passwordController2 = TextEditingController();
  var log = GlobalKey<FormState>();
  bool pass = true;
  bool email = true;
  //var islogin = false;
  //var Auth1 = FirebaseAuth.instance;
  // CheckIfLogin() async
  // {
  //   Auth1.authStateChanges().listen((User? user) {
  //     if (user != null && mounted)
  //    {
  //     setState(() {
  //       islogin = true;
  //     });
  //    }
  //  });
  //}

  //@override
  //void initState() {
  //  CheckIfLogin();
  //  super.initState();
  //}

  void dispose() {
    super.dispose();
    emailController2.dispose();
    passwordController2
        .dispose(); // off the controller if the user doesn`t use them.
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: BuildOfflineBuilder(
          screen: Scaffold(
              body: SingleChildScrollView(
                  child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      color: Colors.orange,
                      height: 100,
                      width: double.infinity,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 90,
                            backgroundColor: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 100),
                        child: Center(
                          child: DefaultTextStyle(
                              style: TextStyle(
                                  shadows: [
                                    Shadow(color: Colors.white, blurRadius: 1)
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
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                        child: Container(
                            child: Form(
                      key: log,
                      child: Column(children: [
                        Container(
                            child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        )),
                        SizedBox(height: 40),
                        TextFormField(
                          controller: emailController2,
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
                              return 'لا يجب ان يكون البريد الالكترونى فارغ';
                            }
                            if (!value.endsWith('@gmail.com')) {
                              return '  (@gmail.com) يجب ان تكتب  ';
                            }
                            if (value == "@gmail.com") {
                              return 'البريد الالكترونى غير صالح';
                            }

                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: passwordController2,
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
                                },
                                icon: Icon(Icons.remove_red_eye),
                              )),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'لا يجب ان يكون الرقم السرى فارغ';
                            } else if (value.length <= 6) {
                              return 'يجب ان تكتب سبعة عناصر على الاقل';
                            }

                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        Container(
                            width: double.infinity,
                            height: 45,
                            child: MaterialButton(
                                splashColor: Colors.red,
                                onPressed: () {
                                  print(emailController2.text);
                                  print(passwordController2.text);
                                  Userlogin();

                                  {}
                                },
                                child: Text(
                                  'تسجيل الدخول',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orange,
                            )),
                        TextButton(
                            onPressed: () {
                              Resetpass();
                            },
                            child: Text(
                              'هل نسيت كلمة السر ؟',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
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
                        //     Text('تسجيل الدخول عن طريق'),
                        //   ],
                        // ),
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
                                onPressed: (() async {
                                  await GoogleRegister();
                                  if (FirebaseAuth.instance.currentUser !=
                                      null) {
                                    print('Your login is done.');

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomeScreen2(),
                                      ),
                                    );
                                  }
                                }),
                                child: Text(
                                  "جوجل",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )),
                            Text('تسجيل الدخول عن طريق'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                        color: Colors.black, fontSize: 15))),
                            SizedBox(
                              width: 90,
                            ),
                            MaterialButton(
                                color: Colors.orange,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    myPageTransition(
                                      // Page Transition -> Fade
                                      SignUp(),
                                    ),
                                  );
                                },
                                child: Text("إنشاء حساب جديد",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15))),
                          ],
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
                    )))),
              ],
            ),
          ))),
        ));
  }

  void Userlogin() async {
    //await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController2.text, password: passwordController2.text);
    try {
      final CredentialV = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController2.text.trim(),
              password: passwordController2.text.trim());
      if (FirebaseAuth.instance.currentUser != null) {
        print('Your login is done.');

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen2(),
          ),
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        print('Your password is wrong.');
      } else {
        print('No user found for this email.');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LogInScreen(),
          ),
        );
      }
    } catch (e) {
      print(e);
    }
  }

  Resetpass() async {
    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: emailController2.text);
  }

  Future<UserCredential> GoogleRegister() async {
    final GoogleSignInAccount? GoogleUser = await GoogleSignIn()
        .signIn(); // Th user will choose his account of google
    final GoogleSignInAuthentication? GoogleAuth = await GoogleUser
        ?.authentication; // googleAuth will take the information of the account of the user
    final Credential = GoogleAuthProvider.credential(
        // By the credential the siginin will connect with the firebase
        accessToken: GoogleAuth?.accessToken,
        idToken: GoogleAuth?.idToken);
    // if (FirebaseAuth.instance.currentUser != null)
    //                    {
    //                      print('Your login is done.');

    //                      Navigator.push(
    //                       context,
    //                       MaterialPageRoute(
    //                         builder: (context) => HomeScreen2(),
    //                         ),
    //                          );
    //                   }
    return await FirebaseAuth.instance.signInWithCredential(Credential);
  }
}
