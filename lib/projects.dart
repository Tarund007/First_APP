import 'package:flutter/material.dart';

class Myprojects extends StatefulWidget {
  const Myprojects({Key? key}) : super(key: key);

  @override
  State<Myprojects> createState() => _MyprojectState();
}

class _MyprojectState extends State<Myprojects> {


  mypro(title,Points,des1,des2,des3,des4,des5){
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width*0.9,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: TextStyle(
                  color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(Points,style: TextStyle(
                  color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(Icons.star,
                    color: Colors.white70,
                    size: 25,),
                  Text(des1,style: TextStyle(
                    color: Colors.orange.shade100,fontSize: 20,
                  ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(Icons.star,
                    color: Colors.white70,
                    size: 25,),
                  Text(des2,style: TextStyle(
                    color: Colors.orange.shade100,fontSize: 20,
                  ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(Icons.star,
                    color: Colors.white70,
                    size: 25,),
                  Text(des3,style: TextStyle(
                    color: Colors.orange.shade100,fontSize: 20,
                  ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(Icons.star,
                    color: Colors.white70,
                    size: 25,),
                  Text(des4,style: TextStyle(
                    color: Colors.orange.shade100,fontSize: 20,
                  ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),

              Row(
                children: [
                  Icon(Icons.star,
                    color: Colors.white70,
                    size: 25,),
                  Text(des5,style: TextStyle(
                    color: Colors.orange.shade100,fontSize: 20,
                  ),
                  ),
                ],

              )
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
      backgroundColor: Color(0xff252525),
      title: Text('Expectation Vs Reality'),
    ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              mypro('Expectation', 'Points', 'Beauty', 'GYM', 'Canteen', 'No Homework', 'NO Load'),
              mypro('Reality', 'Points', 'Placements (OP)', 'GYM (Error 404)', 'Canteen=Mess', 'Good Culture', 'Beauty could Not found(XD)')
            ],
          ),
        ),
      ),
    );

  }
}
