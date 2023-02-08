import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class introductionscreen extends StatelessWidget {
   introductionscreen({Key? key}) : super(key: key);

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'Beauty',
      body: 'Comes Here to Find beauty to make the study more beautiful',
      image: Center(
        child: Image.asset('assets/p2.jpg'),
      ),
      decoration: const PageDecoration(
          pageColor: Colors.grey,
        titleTextStyle: TextStyle(
             fontSize: 20.0,
            fontWeight: FontWeight.bold,
          color: Colors.black,

        )
      )
    ),
    PageViewModel(
        title: 'GYM',
        body: 'Think to make a Schedule and Do Exercise In gym',
        image: Center(
          child: Image.asset('assets/p3.jpg'),
        ),
        decoration: const PageDecoration(
            pageColor: Colors.grey,
            titleTextStyle: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )
        )
    ),
    PageViewModel(
        title: 'Canteen',
        body: 'Sometime if we not want to access the mess menu then we access the Canteen where all need we can full fill it',
        image: Center(
          child: Image.asset('assets/p4.jpg'),
        ),
        decoration: PageDecoration(
          imageAlignment: Alignment(10, 10),
            pageColor: Colors.grey,
            titleTextStyle: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )
        )
    ),
    PageViewModel(
        title: 'NO Homework',
        body: 'their is no load to do homework ',
        image: Center(
          child: Image.asset('assets/p5.jpg'),
        ),
        decoration: const PageDecoration(
            pageColor: Colors.grey,
            titleTextStyle: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )
        )
    ),
    PageViewModel(
        title: 'NO Load',
        body: 'Full enjoyable',
        image: Center(
          child: Image.asset('assets/p6.jpg'),
        ),
        decoration: const PageDecoration(
            pageColor: Colors.grey,
            titleTextStyle: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )
        )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Expectation'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(

            size: Size(10, 10),
            color: Colors.black,
            activeSize: Size.square(5),
            activeColor: Colors.black54,
          ),
          showDoneButton: true,
          done: const Text('Done', style: TextStyle(fontSize: 20),),
          showSkipButton: true,
          skip: const Text('Skip', style: TextStyle(fontSize: 20),),
          showNextButton: true,
          next: const Icon(Icons.arrow_forward,size: 20,),
          onDone: (){},
        ),
      ),
    );
  }

  void onDone(context){
    Navigator.pushNamed(context, 'Sliding screen');
  }
}

