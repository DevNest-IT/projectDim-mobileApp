import 'package:flutter/material.dart';
import 'home.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> with TickerProviderStateMixin{
    late AnimationController _controller;
    late Animation<double> _animation;

    @override
    void initState(){
      super.initState();
      _controller= AnimationController(
        duration: Duration(
            seconds: 3,
        ),
        vsync: this,
      );
      _animation = Tween<double> (
          begin: 0.0,
          end:5.0 ).animate(_controller);
      _controller.forward();

    }

    @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }


  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(
            seconds: 2 ),(){
            Navigator.pushReplacement(context,
            MaterialPageRoute(
            builder: (builder)=>home()
         ),
        );
      }
    );

    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Image.asset(
            'images/logo.png',
            height:160 ,
            width: 90,
            fit: BoxFit.fill,
          ),

        ),
      ),

    );
  }
}
