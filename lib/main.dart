

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: demo(),
  ));
}
class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  _demoState createState() => _demoState();
}

class _demoState extends State<demo> {

  TextEditingController a1 = TextEditingController();
  TextEditingController a2 = TextEditingController();
  TextEditingController a3 = TextEditingController();
  TextEditingController a4 = TextEditingController();
  TextEditingController a5 = TextEditingController();
  TextEditingController a  = TextEditingController();
  String lt ="",st="";
  double f=0, min=0,max=0,per=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://play-lh.googleusercontent.com/gU9NKwpgLDYA6LIYK4dnkAkVyqNHUfTIqklEiNuO4oZ2OCpWQhQdqhnDh8Yb9B8SWIM=s180-rw"),
             fit: BoxFit.fill,
          )
        ),
        child: Column(
          children: [
            TextField(controller: a,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "Name"
              ),
            ),
            TextField(controller: a1,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "s1",
            ),),
            TextField(controller: a2,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: "s2"
            ),),
            TextField(controller: a3,
            keyboardType:TextInputType.name,
              decoration: InputDecoration(
                labelText: "s3"
              ),
            ),
            TextField(controller: a4,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: "s4"
            ),),
            TextField(controller: a5,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: "s5"
            ),),


            ElevatedButton(onPressed: ()
                {
                  setState(() {
                    st=a.text;
                  });
                },
                child: Text("name")),
            Text("name:$st"),
            ElevatedButton(onPressed: (){
              setState(() {
              String s1 = a1.text;
              String s2 = a2.text;
              String s3 = a3.text;
              String s4 = a4.text;
              String s5  = a5.text;


              double a = double.parse(s1);
              double b = double.parse(s2);
              double c = double.parse(s3);
              double d = double.parse(s4);
              double e = double.parse(s5);
               f=a+b+c+d+e;
              });
            }, child: Text("sum")),
            Text("sum:$f"),
            ElevatedButton(onPressed: (){
              setState(() {
                String s1 = a1.text;
                String s2 = a2.text;
                String s3 = a3.text;
                String s4 = a4.text;
                String s5  = a5.text;

                double a = double.parse(s1);
                double b = double.parse(s2);
                double c = double.parse(s3);
                double d = double.parse(s4);
                double e = double.parse(s5);

                if(a>b && b>c && c>d && d>e)
                {
                    max=a;
                }
                else if(b>c && b>d && b>e)
                {
                   max=b;
                }
                else if(c>d && c>e )
                {
                  max=c;
                }
                else if(d>e)
                {
                   max=d;
                }
                else
                {
                  max=e;
                }


              });
            }, child: Text("max")),
            Text("answer:$max"),
            ElevatedButton(onPressed: (){
              setState(() {
                String s1 = a1.text;
                String s2 = a2.text;
                String s3 = a3.text;
                String s4 = a4.text;
                String s5  = a5.text;

                double a = double.parse(s1);
                double b = double.parse(s2);
                double c = double.parse(s3);
                double d = double.parse(s4);
                double e = double.parse(s5);

                if(a<b && b<c && c<d && d<e)
                {
                  min=a;
                }
                else if(b<c && b<d && b<e)
                {
                  min=b;
                }
                else if(c<d && c<e )
                {
                  min=c;
                }
                else if(d<e)
                {
                  min=d;
                }
                else
                {
                  min=e;
                }


              });
            }, child: Text("min")),
            Text("min:$min"),
          //  Text("max:$max"),
           // Text("total:$f"),
            ElevatedButton(onPressed: (){
              setState(() {
                String s1 = a1.text;
                String s2 = a2.text;
                String s3 = a3.text;
                String s4 = a4.text;
                String s5  = a5.text;


                double a = double.parse(s1);
                double b = double.parse(s2);
                double c = double.parse(s3);
                double d = double.parse(s4);
                double e = double.parse(s5);

                per=f/5;
              });
            }, child: Text("percentage")),
            Text("sum:$per"),
            ElevatedButton(onPressed: (){
              setState(() {
                String s1 = a1.text;
                String s2 = a2.text;
                String s3 = a3.text;
                String s4 = a4.text;
                String s5  = a5.text;


                double a = double.parse(s1);
                double b = double.parse(s2);
                double c = double.parse(s3);
                double d = double.parse(s4);
                double e = double.parse(s5);

                if(per>35)
                  {
                    lt="pass";
                  }
                else
                  {
                    lt="fail";
                  }
              });
            }, child: Text("result")),
            Text("result:$lt"),


          ],
        ),
      ),
    );
  }
}
