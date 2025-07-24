import 'package:flutter/material.dart';
import 'package:projectdim/home.dart';
import 'package:projectdim/home/bottom%20app%20bar/Egg.dart';
import 'package:projectdim/home/bottom%20app%20bar/history.dart';
import 'package:projectdim/home/bottom%20app%20bar/resource.dart';

class healthDataEntry extends StatelessWidget {
  int sick=0, deceased= 0;
  TextEditingController sickcontroller = TextEditingController();
  TextEditingController deceasedcontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: 30,),

                  Text("Health Data Entry",
                    style:TextStyle(
                      fontSize:30,
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
                                      controller: sickcontroller,
                                      style: TextStyle(
                                        color: Colors.black,        // Text input color
                                        fontSize: 18,
                                      ),

                                      decoration:InputDecoration(
                                        prefixIcon:  Icon(
                                          Icons.sick_outlined,
                                          color: Colors.black,
                                        ),

                                        labelText: "Sick Chickens",
                                        labelStyle: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                        ),

                                        hintText: "Enter Number of sick chickens",
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
                                      controller: deceasedcontroller,
                                      style: TextStyle(
                                        color: Colors.black,        // Text input color
                                        fontSize: 18,
                                      ),

                                      decoration:InputDecoration(
                                        prefixIcon:  Icon(
                                          Icons.dangerous_outlined,
                                          color: Colors.black,
                                        ),

                                        labelText: "Deceased Chickens",
                                        labelStyle: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                        ),

                                        hintText: "Enter number of Deceased Chickens",
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
                                         String sick= sickcontroller.text;
                                        String deceased = deceasedcontroller.text;

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
                                        Text("Today's Sick",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),



                                        Text("$sick",
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
                                        Text("Today's Deceased",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),

                                        Text("$deceased",
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

                                        Text("Yesterday's Sick",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),

                                        ),

                                        //SizedBox(width:100,),

                                        Text("$sick",
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

                                        Text("Yesterday's Deceased",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),

                                        ),

                                        //SizedBox(width:100,),

                                        Text("$deceased",
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
//dashboard
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
                      color: Colors.green,

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
