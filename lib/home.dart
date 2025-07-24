import 'package:flutter/material.dart';
import 'home/bottom app bar/Egg.dart';
import 'home/bottom app bar/health.dart';
import 'home/bottom app bar/resource.dart';
import 'home/bottom app bar/history.dart';
import 'package:intl/intl.dart';



class home extends StatefulWidget   {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home>  {
  int collected =0;
  int sold =0;
  //int stock =0;
  int sick=0;
  int deceased =0;
  double water=0.0;
  double food = 0.0;
// date
      late String currentDate;
      @override
      void initState(){
        super.initState();
        updateDate();
        }
      void updateDate(){
        DateTime now= DateTime.now();
        currentDate= DateFormat('hh:mm a \nEEE,dd MMM yyyy').format(now);

      }

/*get egg data.

getEggData()async{
        SharedPreferences sp = await SharedPreferences.getInstance();
        setState(() {
           collected =sp.getInt("collected")??0;
           sold = sp.getInt("sold")??0;
        });
}
@override
void initstate(){
        super.initState();
        getEggData();
}*/

//egg metrics
  Widget buildEggMetricCard(String label, int value , Color color) {
    return Expanded(
      child: Card(
        color: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
        ),

        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                "$value",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: color,
                ),
              ),

              SizedBox(height: 8),
              Text(
                label,
                style: TextStyle(
                    fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      )
    );
  }

//chicken health

  Widget buildchickenHealthCard(IconData iconData, Color color, int num, String label){
    return Expanded(
        child:Card(
          color: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
//Left
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(iconData,color: color,size: 30,),
                  SizedBox(height: 8,),

                  Text(
                    '$num',
                    style: TextStyle(
                      fontSize: 20,
                      color: color,

                    ),
                  ),

                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,

                    ),
                  ),
                ],
              ),

              Container(

                height: 30,
                width: 2,
                margin: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.black,
              ),

 //Right
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(iconData,color: color,size: 30,),
                  SizedBox(height: 8,),

                  Text(
                    '$num',
                    style: TextStyle(
                      fontSize: 20,
                      color: color,

                    ),
                  ),

                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,

                    ),
                  ),
                ],
              ),


            ],
          ),
        ),


        )
    );
  }


//resource consumption
  Widget buildresourceConsumptionCard( IconData iconData, Color color, double quantity,String Unit, String name){
    return Expanded(
         child: Card(
           color: Colors.white,
           elevation: 2,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(12)
           ),


         child: Padding(
             padding:EdgeInsets.all(12),
           child: Column(
             children: [
               Icon(iconData,color: color ,size:30 ,),
               SizedBox(height: 8),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(
                     '$quantity' ,
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.black,
                     ),
                   ),

                   Text(
                     Unit,
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.black,
                     ),
                   ),

                 ],
               ),

               SizedBox(height: 8),
               Text(
                 name,
                 style: TextStyle(
                   fontSize: 16,
                 ),
               ),



             ],
           ),
          ),
         ),
    );

  }

  //Scaffold
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      

    body: SafeArea(
        child:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
//title
                  Text(
                    "Today's Summary",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
//date
                  SizedBox(
                        child: Text(currentDate,
                          style:TextStyle(
                            fontSize: 18,
                          ),
                        ),
                  ),

                  SizedBox(height: 5,),
                  Text("Egg Metrics",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

      //egg metrics card
                  SizedBox(height: 16),
                  Row(
                    children: [
                      buildEggMetricCard("Collected", collected, Colors.orange),

                      SizedBox(width: 8),
                      buildEggMetricCard("Sold", sold, Colors.green),

                      SizedBox(width: 8),
                      buildEggMetricCard("Stock", collected-sold, Colors.blue),

                    ],
                  ),

                  Text(
                    "Weekly Egg Collection",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 3,),
                  Container(
                    height: 25,
                  ),

                  Text(
                    "Chicken Health",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 3,),
                  Row(
                    children: [
                      buildchickenHealthCard(Icons.sick_outlined, Colors.orange, deceased, "Sick"),


                    ],
                  ),


                  Text(
                    "Resource Consumtion",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 3,),
                  Row(
                    children: [
                      buildresourceConsumptionCard(Icons.water_drop_rounded, Colors.blue,water," L","Water" ),
                      buildresourceConsumptionCard(Icons.restaurant, Colors.brown,food ," KG","Food" ),

                    ],

                  ),


          ],
        ),
      ),


       )
      ),

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
                      color: Colors.green,


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

                    )
                ),




              ],
            ),
          ),

      ),


    );
  }
}


