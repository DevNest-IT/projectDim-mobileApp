import 'package:flutter/material.dart';
import 'package:projectdim/home.dart';
import 'package:projectdim/home/bottom%20app%20bar/Egg.dart';
import 'package:projectdim/home/bottom%20app%20bar/history.dart';
import 'package:projectdim/home/bottom%20app%20bar/resource.dart';

class healthDataEntry extends StatefulWidget {
  @override
  State<healthDataEntry> createState() => _healthDataEntryState();
}

class _healthDataEntryState extends State<healthDataEntry> {
  int sick=0, deceased= 0,currentIndex=2;

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


//bootom bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,

          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              currentIndex=index;

            });

            switch (index) {
              case 0:
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (builder)=>home()
                    )
                );
                break;
              case 1:
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (builder)=>eggDataEntry()
                    )
                );
                break;
              case 2:
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (builder)=>healthDataEntry()
                    )
                );
                break;
              case 3:
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (builder)=>resource()
                    )
                );
                break;
              case 4:
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (builder)=>history()
                    )
                );
                break;
            }
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
            BottomNavigationBarItem(icon: Icon(Icons.egg), label: 'Egg'),
            BottomNavigationBarItem(icon: Icon(Icons.sick), label: 'Sick'),
            BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Resource'),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          ],
        )


    );
  }
}
