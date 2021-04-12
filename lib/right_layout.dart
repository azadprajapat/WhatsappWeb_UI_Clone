import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RightLayout extends StatefulWidget {
  @override
  _RightLayoutState createState() => _RightLayoutState();
}

class _RightLayoutState extends State<RightLayout> {

  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width*3.4/3.5;
    var h =MediaQuery.of(context).size.height;
    var w_f = w/1536;
    var h_f = h/758;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: h*0.087,
        title: Text("Azad Prajapat",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.8)),),
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
                child:Icon(Icons.search,color: Color.fromRGBO(145, 145, 145, 1),)
            ),
          ),

          SizedBox(
            width: w*0.02,
          ),
            InkWell(
            child: Container(
                child:Icon(Icons.more_vert,color: Color.fromRGBO(145, 145, 145, 1),)
            ),
          ),
          SizedBox(
            width: w*0.01,
          ),
            ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment(0,1),
            child: Container(
              height: h*0.087,
              color: Color.fromRGBO(237, 237, 237, 1),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20*h_f,vertical: 10*w_f),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Container(
                          child:Icon(Icons.emoji_emotions_outlined,color: Color.fromRGBO(145, 145, 145, 1),)
                      ),
                    ),
                    InkWell(
                      child: Container(
                          child:Icon(Icons.attachment_sharp,color: Color.fromRGBO(145, 145, 145, 1),)
                      ),
                    ),
                    Container(
                      width: w*0.6,
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search_sharp,color: Color.fromRGBO(52, 55, 56, 0.8),size: 15*w_f,),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30*w_f)
                          ),
                          hintText: "Type a message",
                          hintStyle: TextStyle(fontSize: 15*w_f,fontWeight: FontWeight.w300,color: Color.fromRGBO(52, 55, 56, 0.8)),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                          child:Icon(Icons.mic,color: Color.fromRGBO(145, 145, 145, 1),)
                      ),
                    ),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
