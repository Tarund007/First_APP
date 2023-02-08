import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Intro2 extends StatelessWidget {
  Intro2({Key? key}) : super(key: key);

  final List<PageViewModel> pages = [
    PageViewModel(
        title: 'Placements (OP)',
        body: 'Everyone is here to do hard in return they get the Excellent Placements from their Institute',
        image: Center(
          child: Image.asset('assets/p7.jpg'),
        ),
        decoration: const PageDecoration(
            pageColor: Colors.grey,
            titleTextStyle: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
    PageViewModel(
        title: 'GYM not Found',
        body: 'There is no gym is found 404',
        image: Center(
          child: Image.asset('assets/p8.jpg'),
        ),
        decoration: const PageDecoration(
            pageColor: Colors.grey,
            titleTextStyle: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
    PageViewModel(
        title: 'Canteen=Mess',
        body: 'For your canteen ,mess=Canteen only',
        image: Center(
          child: Image.asset('assets/p9.jpg'),
        ),
        decoration: const PageDecoration(
            pageColor: Colors.grey,
            titleTextStyle: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
    PageViewModel(
        title: 'Culture',
        body: 'Great Environment Of Academics and fruitful culture  ',
        image: Center(
          child: Image.asset('assets/p10.jpg'),
        ),
        decoration: const PageDecoration(
          pageColor: Colors.black54,
            titleTextStyle: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Reality'),
        centerTitle: true,
      ),
      body: IntroductionScreen(
        pages: pages,
        dotsDecorator: const DotsDecorator(
          size: Size(10, 10),
          color: Colors.blue,
          activeSize: Size.square(5),
          activeColor: Colors.red,
        ),
        showDoneButton: true,
        done: const Text('Done', style: TextStyle(fontSize: 20),),
        showSkipButton: true,
        skip: const Text('Skip', style: TextStyle(fontSize: 20,color: Colors.black),),
        showNextButton: true,
        next: const Icon(Icons.arrow_forward,size: 20,color: Colors.black,),
        onDone: (){},
        curve: Curves.bounceOut,
      ),
    );
  }

  void onDone(context){
    Navigator.pushNamed(context, 'Sliding screen 2');
  }
}

