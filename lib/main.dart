import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Meals()) );
}
class Meals extends StatefulWidget{
  @override
  State<Meals> createState() {
    // TODO: implement createState
    return meal();
  }

}
class meal extends State<Meals>{
  int counter=0;
  double price=0.00;
  bool flag=true;
  bool flag2=false;
  bool flag3=false;
  bool flag4=false;
  bool flag5=false;


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.grey[300],
     body: Column(
       children: [
         Container(
           height: 344,
           color: Colors.white,
           child: Column(
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                    ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight:Radius.circular(10) ),child: Image(image: AssetImage("images/img_1.png"),fit: BoxFit.cover)),
Column(
  children: [
    Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text("بيتزا بالخضار",style: TextStyle(
              color: Colors.black
          )),
    ),
    Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text("بيتزا بالخضار مميزة",style: TextStyle(
              color: Colors.grey[300]
          ),),
    )
  ],

),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [

                         Container(
                           child: Row(
                             children: [
                               IconButton(onPressed: () {
if(counter!=10){
  counter=counter+1;
  price=price+21.00;

}


                                 setState(() {

                                 });
                               }, icon: Icon(Icons.add,color: Colors.green[100],)),
                               Text(counter.toString(),style: TextStyle(
                                 color: Colors.black
                               )),
                               IconButton(onPressed: () {
                                 if(counter!=0){
                                   counter=counter-1;
                                   price=price-21.00;


                                 }
                                 setState(() {

                                 });
                               }, icon: Padding(
                                 padding: const EdgeInsets.only(bottom: 100),
                                 child: Icon(Icons.minimize_outlined,color: Colors.green[100]),
                               )),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(right: 20),
                           child: Text(   price.toString()+'\$',style: TextStyle(
                               color: Colors.black
                           )),
                         ),
                       ],
                     ),
                   ],
                 ),


             ],
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(top: 10,bottom: 10),
           child: Container(
             color: Colors.white,
             child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Text(":اختيارك من الحجم (اختياري)",style: TextStyle(
                    fontWeight: FontWeight.bold
                 ),),
                 Text("اختر من القائمة"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Checkbox(value: flag, onChanged: (value) {
                      setState(() {
                        flag=value!;
                        if(value==true){
                          flag2=false;
                          flag3=false;

                        }

                      });
                    },),
                    Text("الصنف 1")
                  ],
                ),Divider(),Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,

                   children: [
                Row(
                  children: [
                    Checkbox(value: flag2, onChanged: (value) {
                      setState(() {
                        flag2=value!;
                        if(value==true){
                          flag=false;
                          flag3=false;
                          if(counter!=0){
                            price=price+9.00;

                          }
                        }

                      });
                    },),
                    Text("(\$9.00+)"),
                  ],
                ),
                     Text("الصنف 2")
                   ],
                 ),Divider(), Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         Checkbox(value: flag3, onChanged: (value) {
                           setState(() {
                             flag3=value!;
                             if(value==true){
                               flag2=false;
                               flag=false;
                               if(counter!=0){
                                 price=price+9.00;

                               }                             }


                           });
                         },),
                         Text("(\$9.00+)"),
                       ],
                     ),

                     Text("الصنف 3")
                   ],
                 ),
               ],
             ),
           ),
         ),
          Container(
             color: Colors.white,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Text(":اختيارك من الاضافات(اختياري)",style: TextStyle(
                     fontWeight: FontWeight.bold
                 ),),
                 Text("اختر من القائمة"),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,

                   children: [
                     Checkbox(value: flag4, onChanged: (value) {
                       setState(() {
                         flag4=value!;
                         if(counter!=0){
                           price=price+9.00;

                         }

                       });
                     },),
                     Text("الصنف 1")
                   ],
                 ),Divider(),Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,

                   children: [
                     Row(
                       children: [
                         Checkbox(value: flag5, onChanged: (value) {
                           setState(() {
                             flag5=value!;
if(counter!=0){
  price=price+9.00;

}

                           });
                         },),
                         Text("(\$9.00+)"),
                       ],
                     ),
                     Text("الصنف 2")
                   ],
                 ),
                 Container(
                   height: 30,
                   color: Colors.grey[300],
                   child: Center(
                     child: Container(
                       height: 50,
                       color: Colors.blue,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text(price.toString()+'\$',style: TextStyle(
                             color: Colors.white
                           )),
                           Text("اضافة للسلة",style: TextStyle(
                               color: Colors.white
                           )),

                         ],
                       ),
                     ),
                   ),
                 )
               ],
             ),
           ),

       ],
     ),
   );
  }

}

