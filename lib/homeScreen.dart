import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  double xoffSet = 0;
  double yoffSet = 0;
  double ScaleFactor = 1;
  bool isOpenorNot = false;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffSet, yoffSet, 0)..scale(ScaleFactor),
      duration: Duration(milliseconds: 250),
      color: Colors.grey[200],
      child: Column(
        children: [
          SizedBox(height: 60.0,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isOpenorNot? IconButton(icon: Icon(Icons.arrow_back), onPressed: (){

                  setState(() {
                    isOpenorNot = false;
                    xoffSet = 0;
                    yoffSet = 0;
                    ScaleFactor = 1;
                  });

                })
                    : IconButton(icon: Icon(Icons.menu), onPressed: (){

                  setState(() {
                    isOpenorNot = true;
                    xoffSet = 230;
                    yoffSet = 150;
                    ScaleFactor = 0.6;
                  });

                }),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      Text('Location'),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.location_on,color: primaryGreen,),
                            Text('Ukraine')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                CircleAvatar(backgroundColor: primaryGreen,)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search),
                Text('Find your Buddy Here!'),
                Icon(Icons.settings)
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Categories.length,
                itemBuilder:(context,index){
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(left: 20.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: shadowList,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Image.asset(Categories[index]['iconPsth'],height: 50.0, width: 50.0,),
                        ),
                        Column(

                          children: [
                            Text(Categories[index]['name'], style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryGreen
                            ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }
            ),
          ),
          Container(
            height: 240,
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(child:
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.blueGrey[300], borderRadius: BorderRadius.circular(20.0),boxShadow: shadowList),
                      margin: EdgeInsets.only(top: 40.0),
                    ),
                    Align(
                      child: Image.asset('images/pet-cat1.png'),
                    )
                  ]
                )
                ),
                Expanded(child:
                Container(
                    margin: EdgeInsets.only(top: 60.0,bottom: 20.0),
                    decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
                        boxShadow: shadowList),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: ,
                        ),
                        Container(

                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
