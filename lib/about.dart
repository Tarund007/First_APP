import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10, right: 1, left: 1),
                child: ShaderMask(
                    shaderCallback: (rect){
                      return LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter
                          ,colors: [Colors.black, Colors.transparent]).createShader(Rect.fromLTRB(0, rect.width, 0, rect.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset('assets/pic.jpg')),
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.20),
                child: Column(
                  children: [
                    Text('Hello I Am', style: TextStyle(
                      color: Colors.teal.shade50, fontSize: 60, fontWeight: FontWeight.bold
                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Tarun Dinkar', style: TextStyle(
                      color: Colors.cyan.shade50, fontSize: 40, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    Text('App Developer', style: TextStyle(
                        color: Colors.cyan.shade100, fontSize: 35, fontWeight: FontWeight.bold ),),
                    Text('(Beginner)', style: TextStyle(color: Colors.white, fontSize: 20,
                    ),),
                    SizedBox(
                      height: 350,
                    ),
                    SizedBox(
                      width: 120,
                      child: TextButton(onPressed: (){}, child: Text('Tap'),
                        style: TextButton.styleFrom(backgroundColor: Colors.white, primary: Colors.black),),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      IconButton(onPressed: (){}, icon: Icon(
                        FontAwesomeIcons.instagram,color: Colors.white,
                      )),
                      IconButton(onPressed: (){}, icon: Icon(
                        FontAwesomeIcons.github,color: Colors.white,
                      )),
                      IconButton(onPressed: (){}, icon: Icon(
                        FontAwesomeIcons.twitter,color: Colors.white,
                      )),
                      IconButton(onPressed: (){}, icon: Icon(
                        FontAwesomeIcons.linkedin,color: Colors.white,
                      )),
                      IconButton(onPressed: (){}, icon: Icon(
                        FontAwesomeIcons.facebook,color: Colors.white,
                      )),
                    ],)
                  ],

                ),

              ),

            ],
          ),
        ) ,

    );
  }
}
