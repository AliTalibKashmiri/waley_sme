import 'package:flutter/material.dart';


class home extends StatefulWidget {


  @override
  _home createState() => _home();
}

class _home extends State<home> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title:  Image.asset('Images/WaileyLog.png',
              height: 50,),
            leading: Icon(Icons.menu,color: Colors.red,),
          ),
        ),

        body: Center(
          child:   Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Image.asset('Images/home_pic.jpg',),
              SizedBox(height: height/9,),
              Container(
                width: width / 1.4,
                height: height / 14,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(10.0),
                  color: Color(0xffeb4438)
                ),
                child: FlatButton(
//                      shape: new RoundedRectangleBorder(
//                          borderRadius: new BorderRadius.circular(20.0),
//                          side: BorderSide
//                            //color: Color(0xff34499f),
//                          )),

                  // color: Color(0xff34499f)
                  textColor: Color(0xffffffff),
                  child: Text(
                    "KAAM KREN",
                    style: TextStyle(
                        fontSize: width / 25, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>navigate()));
                  },
                ),
              ),
              SizedBox(height: height/60,),
              Container(
                width: width / 1.4,
                height: height / 14,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(10.0),
                  color: Color(0xff0c9c37)
                ),
                child: FlatButton(
//                      shape: new RoundedRectangleBorder(
//                          borderRadius: new BorderRadius.circular(20.0),
//                          side: BorderSide
//                            //color: Color(0xff34499f),
//                          )),

                  // color: Color(0xff34499f)
                  textColor: Color(0xffffffff),
                  child: Text(
                    "KAAM KARWWAEN",
                    style: TextStyle(
                        fontSize: width / 25, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>navigate()));
                  },
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}


