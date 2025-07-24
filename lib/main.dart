import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'splash.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    )
  );
  runApp(const projectDim());
}
class projectDim extends StatelessWidget {
  const projectDim({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),

      title:"Dim Project",

      home: splash(),

    );
  }
}
