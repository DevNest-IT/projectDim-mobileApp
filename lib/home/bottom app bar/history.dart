import 'package:flutter/material.dart';
import 'package:projectdim/home.dart';
import 'package:projectdim/home/bottom%20app%20bar/Egg.dart';
import 'package:projectdim/home/bottom%20app%20bar/health.dart';
import 'package:projectdim/home/bottom%20app%20bar/resource.dart';

class history extends StatelessWidget {
  const history ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("History",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: (){},
                        icon:Icon(Icons.search_outlined,
                        )

                    )
                  ],
                ),




                ),


              ],
            ),
          ],
        ),




//bottom bar
      bottomNavigationBar: BottomAppBar(
        color: Colors.white38,
        elevation: 2,
        child: SizedBox(
          height: 90,


          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed:(){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(
                            builder: (builder)=> home()
                        )
                    );
                  },
                  icon: Icon(
                    Icons.dashboard,



                  )
              ),

              IconButton(
                  onPressed:(){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(
                            builder: (builder)=> eggDataEntry()
                        )
                    );
                  },
                  icon: Icon(
                    Icons.egg,

                  )
              ),

              IconButton(
                  onPressed:(){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(
                            builder: (builder)=> healthDataEntry()
                        )
                    );
                  },
                  icon: Icon(
                    Icons.sick,

                  )
              ),

              IconButton(
                  onPressed:(){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(
                            builder: (builder)=> resource()
                        )
                    );
                  },
                  icon: Icon(
                    Icons.water_drop_rounded,

                  )
              ),

              IconButton(
                  onPressed:(){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(
                            builder: (builder)=> history()
                        )
                    );
                  },
                  icon: Icon(
                    Icons.history,
                    color: Colors.green,
                    size: 25,

                  )
              ),


            ],
          ),
        ),

      ),
    );
  }
}
