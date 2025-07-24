import 'package:flutter/material.dart';
import 'package:projectdim/home.dart';
import 'package:projectdim/home/bottom%20app%20bar/Egg.dart';
import 'package:projectdim/home/bottom%20app%20bar/health.dart';
import 'package:projectdim/home/bottom%20app%20bar/history.dart';

class resource extends StatelessWidget {
  double water= 0, food =0;

  TextEditingController watercontroller = TextEditingController();
  TextEditingController foodcontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: 30,),

                  Text("Resourse Data Entry",
                    style:TextStyle(
                      fontSize: 30,
                      color: Colors.black,


                    ),

                  ),

                  SizedBox(height: 3,),


                  //for first container
                  Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,

                    child:Padding(
                      padding: const EdgeInsets.all(12),

                      child: Column(
                        children: [

                          Container(
                            color: Colors.white,

                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  // collected
                                  child: TextField(
                                      controller: watercontroller,
                                      style: TextStyle(
                                        color: Colors.black,        // Text input color
                                        fontSize: 18,
                                      ),

                                      decoration:InputDecoration(
                                        prefixIcon:  Icon(
                                          Icons.water_drop_outlined,
                                          color: Colors.black,
                                        ),

                                        labelText: "Water Consumption(L)",
                                        labelStyle: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                        ),

                                        hintText: "Enter amount of water used",
                                        hintStyle: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                        ),
                                        border: OutlineInputBorder(),


                                      )


                                  ),
                                ),

                                //sold
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                      controller: foodcontroller,
                                      style: TextStyle(
                                        color: Colors.black,        // Text input color
                                        fontSize: 18,
                                      ),

                                      decoration:InputDecoration(
                                        prefixIcon:  Icon(
                                          Icons.restaurant,
                                          color: Colors.black,
                                        ),

                                        labelText: "Food Consumption (KG)",
                                        labelStyle: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                        ),

                                        hintText: "Enter number of eggs sold",
                                        hintStyle: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                        ),
                                        border: OutlineInputBorder(),


                                      )


                                  ),
                                ),

 //button
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    elevation: 2,
                                    child: SizedBox(

                                      width: double.infinity,
                                      child: TextButton(
                                        onPressed:(){
                                          String water = watercontroller.text;
                                          String food = foodcontroller.text;

                                          ScaffoldMessenger.of(context).showSnackBar(
                                              SnackBar(
                                                content: Text("Data Saved Successfully",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.white
                                                  ),
                                                ),
                                                duration: Duration(seconds: 3),
                                                backgroundColor: Colors.black,
                                              )
                                          );
                                        },

                                        child: Text("Save Data",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 15
                                          ),
                                        ),
                                      ),

                                    ),
                                  ),
                                )
                              ],
                            ),



                          )
                        ],
                      ),
                    ),

                  ),
                  SizedBox(height: 15,) ,
//second
                  Material(
                    color: Colors.white,

                    borderRadius: BorderRadius.circular(12),
                    elevation: 4,

                    child: Padding(
                      padding: const EdgeInsets.all(12),

                      child: Container(


                        width: double.infinity,
                        color: Colors.white38,
                        //borderRadius: BorderRadius.circular(20),


                        child: SizedBox(
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Text("Quick Summary",
                                  style:TextStyle(
                                    fontSize: 20,

                                  )
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Container(
                                  height: 1,
                                  color: Colors.black,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Today's Water",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),



                                        Text("$water L",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Today's food",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),

                                        Text("$food Kg",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 5,),


                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        Text("Yesterday's Water",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),

                                        ),

                                        //SizedBox(width:100,),

                                        Text("$water L",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),

                                        ),
                                      ],
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        Text("Yesterday's food",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),

                                        ),

                                        //SizedBox(width:100,),

                                        Text("$food Kg",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),

                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              )


                            ],
                          ),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            )

        ),
//bottom bar
        bottomNavigationBar: BottomAppBar(

          color: Colors.white38,
          elevation: 2,
          child: SizedBox(
            height: 90,

            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
//dashbord
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

//egg data entry
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

//health data entry
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
//resourse
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
                      color: Colors.green,
                    )
                ),
//history
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

        )
    );
  }
}
