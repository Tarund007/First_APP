import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {

  myachiev(num, type){
    return Row(
      children: [
        Text(num,
          style: TextStyle(
            fontSize: 50, fontWeight: FontWeight.bold
        ),),
        Container(
          margin: EdgeInsets.only(top:19) ,
          child: Text(type),

        )

      ],
    );
  }

  myassign(icon,tech){
    return Container(
      margin: EdgeInsets.all(0),
      width: 100,
      height: 120,
      child: Card(
        color: Color(0xff4527A0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon( icon,
              color: Colors.white
              ,),
              SizedBox(
                height: 10,
              ),
              Text(tech,
                style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),)],
          ),
        ),

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

      ),
      body: SlidingSheet(
        elevation: 10,
        cornerRadius: 45,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.05, 0.8, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 1, right: 1, left: 1),
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
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.80),
                child: Column(
                  children: [Text('Tarun Dinkar', style: TextStyle(
                  color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 2,
                    ),
                    Text('App Developer', style: TextStyle(
                      color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold ),),
                    Text('(Beginner)', style: TextStyle(color: Colors.white, fontSize: 12,
                        ),),
                  ],
                ),

              ),

            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 50, right: 50, top: 30),
            height: 500,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myachiev('1', 'st Project'),
                    myachiev('1', 'Topic')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Assignment', style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        myassign(Icons.android, "Android App"),
                        myassign(Icons.android, "Android App")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        myassign(Icons.android, "Android App"),
                        myassign(Icons.android, "Android App")

                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        myassign(Icons.android, "Android App"),
                        myassign(Icons.android, "Android App")

                      ],
                    ),

                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

