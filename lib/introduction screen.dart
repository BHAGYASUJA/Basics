import 'package:assignment1/LoginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MaterialApp(
    home: intro(),
  ));
}

class intro extends StatefulWidget {
  const intro({Key? key}) : super(key: key);

  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {
  PageDecoration pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.green,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.green,
      ),
      imagePadding: EdgeInsets.all(20),
      boxDecoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.black,
        Colors.white,
        Colors.red,
        Colors.yellowAccent,
        Colors.lightGreenAccent,
      ])));
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            decoration: pageDecoration,
            title: "First Page",
            body:
                "Introduction Screen allows you to have a screen on an app's first launch to, for example, "
                "explain your app. This widget is very customizable with a great design.",
            image: introImage(
                "https://images.unsplash.com/photo-1680963551392-f17f6d9eca71?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")),
        PageViewModel(
            decoration: pageDecoration,
            title: " 2nd Page",
            body:
                "Introduction Screen allows you to have a screen on an app's first launch to, for example, "
                "explain your app. This widget is very customizable with a great design.",
            image: introImage(
                "https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")),
        PageViewModel(
          decoration: pageDecoration,
          title: "3rd  Page",
          body:
              "Introduction Screen allows you to have a screen on an app's first launch to, for example, "
              "explain your app. This widget is very customizable with a great design.",
          image: introImage(
              "https://images.unsplash.com/photo-1680786755946-6273e1a30346?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80"),
        )
      ],
      onDone: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Loginscreen())),
      onSkip: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Loginscreen())),
      showSkipButton: true,

      ///showBackButton: true,
      skip: const Text("Skip"),
      next: const Text("Next"),
      done: const Text("Continue to home"),
      dotsDecorator: DotsDecorator(
        size: Size(10, 10),
        color: Colors.white,
        activeColor: Colors.greenAccent,
        activeSize: Size(25, 25),
        activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
    );
  }

  Widget introImage(String image) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.network(
        image,
        width: 350,
      ),
    );
  }
}
