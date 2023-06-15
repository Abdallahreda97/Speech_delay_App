import 'dart:math';
import 'dart:ui';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:speakup/internet/build_offline_builder.dart';

import '../Home Screen/HomeScreen.dart';

class helpPage extends StatefulWidget {
  const helpPage({Key? key}) : super(key: key);

  @override
  State<helpPage> createState() => _helpPageState();
}

class _helpPageState extends State<helpPage> {
  @override
  Widget build(BuildContext context) {
    return BuildOfflineBuilder(
      screen: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            backgroundColor: Colors.orange,
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.orange,
                elevation: 0,
                title: Text(
                  "مساعدة ",
                  style: TextStyle(fontSize: 30),
                )),
            body: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  height: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight:
                                    Radius.circular(30)), //add border radius
                            child: Image.asset("images/baby.jpg"),
                          ),
                          Text(
                              '\n   لكى تبدأ اللعب عليك الضغط على (إبدأ اللعب) حيث ستنتقل أولاً إلى الصفحة الإرشادية ثم إضغط على (التالى) لكى تنتقل الى أول مراحل اللعبة حيث يمكنك الضغط على الصورة التى أمامك لكى تسمع صوت معين حيث يجب عليك الضغط على (يلا قول) وتكرار نفس الصوت لكى تنتصر وتنتقل إلى المرحلة التى تليها.',
                              style: TextStyle(fontSize: 18)),
                          Text(
                              '\nإضغط على (أصوات) إذا أردت أن تسمع النطق الصحيح لأهم الكلمات التى تحتاجها بشكل يومى حيث ستختار مجموعة الكلمات التى تريدها ثم تضغط على الصورة التى تحب لكى تسمع النطق الصحيح لها .  \n',
                              style: TextStyle(fontSize: 18)),
                          Text(
                              ' إضغط على(فيديوهات تعليمية) إذا أردت أن تشاهد كرتون ممتع ومفيد للنطق أيضاً فى البداية ستختار الكرتون الذى تحب ثم ستستمتع بمشاهدته بشكل طبيعى .\n',
                              style: TextStyle(fontSize: 18)),
                          Text(
                              ' يمكنك التواصل معنا إذا كان هناك أى مشكلةأو إستفسار على (speakup962@gmail.com)\n',
                              style: TextStyle(fontSize: 18)),
                          Text(
                            'نتمنى لكم دوام الصحة والعافية',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          )),
    );
  }
}
