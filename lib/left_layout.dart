import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeftLayout extends StatefulWidget {
  @override
  _LeftLayoutState createState() => _LeftLayoutState();
}

class _LeftLayoutState extends State<LeftLayout> {
  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width/3.5;
    var h =MediaQuery.of(context).size.height;
    var w_f=w/384;
    var h_f = h/758;
    return Container(
      width: w,
      height: h,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: h*0.30,
          backgroundColor: Color.fromRGBO(237, 237, 237, 1),
          leading: InkWell(
           child: Padding(
           padding: EdgeInsets.all(8*h_f),
             child: CircleAvatar(
               backgroundImage: AssetImage("assets/azad.jfif"),
               radius:  40.0,
             )
           ),
            ),
          actions: [
            InkWell(
              child: Container(
                 child:Icon(Icons.supervised_user_circle_outlined,color: Color.fromRGBO(145, 145, 145, 1),)
              ),
            ),
            SizedBox(
              width: w*0.08,
            ),
            InkWell(
              child: Container(
                  child:Icon(Icons.message_rounded,color: Color.fromRGBO(145, 145, 145, 1),)
              ),
            ),
            SizedBox(
              width: w*0.08,
            ),
            InkWell(
              child: Container(
                  child:Icon(Icons.more_vert,color: Color.fromRGBO(145, 145, 145, 1),)
              ),
            ),
            SizedBox(
              width: w*0.05,
            ),

          ],
          bottom: PreferredSize(
              child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10*w_f,vertical: 20*h_f),
                color: Color.fromRGBO(157, 225, 254, 1),
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        width: w*0.1,
                          height: w*0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30*w_f),
                            color: Colors.white
                          ),
                          child:Icon(Icons.notifications_off,color: Color.fromRGBO(145, 145, 145, 1),)
                      ),
                    ),
                    SizedBox(
                      width: w*0.1,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text("Get notified of new messges",style: TextStyle(fontSize: 20*w_f,fontWeight: FontWeight.w500,color: Color.fromRGBO(52, 55, 56, 0.8)),),
                        SizedBox(height: 10,),
                        Text("Turn on desktop notifications >",style: TextStyle(fontSize: 17*w_f,fontWeight: FontWeight.w300,color: Color.fromRGBO(52, 55, 56, 0.4)),),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: h*0.08,
                padding: EdgeInsets.symmetric(horizontal: 10*w_f,vertical: 10*h_f),
              child: TextFormField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_sharp,color: Color.fromRGBO(52, 55, 56, 0.8),size: 15*w_f,),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30*w_f)
                  ),
                  hintText: "Search or start new chat",
                  hintStyle: TextStyle(fontSize: 15*w_f,fontWeight: FontWeight.w300,color: Color.fromRGBO(52, 55, 56, 0.8)),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              ),

            ],
          ), preferredSize: Size.fromHeight(h*0.23)),
        ),
        body: CupertinoScrollbar(
          thickness: 6.0,
          isAlwaysShown: true,
          child: ListView.builder(
            itemCount: 50,
              itemBuilder: (context,index){
            return Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color:Color.fromRGBO(145, 145, 145, 0.4),width: 0.5))
              ),
              padding: EdgeInsets.symmetric(horizontal: 10*w_f,vertical: 15*h_f),
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    child: Container(
                        width: w*0.1,
                        height: w*0.1,
                        decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(30*w_f),
                              image: DecorationImage(image: AssetImage("assets/azad.jfif"),fit: BoxFit.cover)
                          ),
                     ),
                  ),
                Spacer(flex: 1,),
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Azad Prajapat",style: TextStyle(fontSize: 16*w_f,fontWeight: FontWeight.w400,color: Color.fromRGBO(52, 55, 56, 0.8)),),
                      SizedBox(height: 10,),
                      Text("Loreum ipsum is the dummy text.",style: TextStyle(fontSize: 12*w_f,fontWeight: FontWeight.w200,color: Color.fromRGBO(52, 55, 56, 0.4)),),

                    ],
                  ),
                  Spacer(flex: 2,),
                  Container(
                    child: Text("12:25 PM",style: TextStyle(fontSize: 12*w_f,fontWeight: FontWeight.w200,color: Color.fromRGBO(52, 55, 56, 0.4)),),
                  )

                ],

              ),

          );}),
        ),
      ),
    );
  }
}
