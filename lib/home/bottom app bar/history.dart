import 'package:flutter/material.dart';
import 'package:projectdim/home.dart';
import 'package:projectdim/home/bottom%20app%20bar/Egg.dart';
import 'package:projectdim/home/bottom%20app%20bar/health.dart';
import 'package:projectdim/home/bottom%20app%20bar/resource.dart';

class history extends StatefulWidget {
  const history ({super.key});

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  int currentIndex=4;
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
