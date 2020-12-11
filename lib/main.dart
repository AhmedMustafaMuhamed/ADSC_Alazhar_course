import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   double firstvalue;
  double scoundvalue;
  double result= 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'calculator',
          style: TextStyle(
            fontSize: 25,
            color: Colors.green
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white70,
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(flex: 3, child: TextField(

                  keyboardType: TextInputType.number ,
                  decoration: InputDecoration(
                    enabled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 5,
                        color: Colors.cyan
                      ),
                    ),
                    hintText: 'first value',
                  ),
                  style: TextStyle(
                    backgroundColor: Colors.tealAccent,
                  ),
                  autofocus: true,
                  maxLength: 5,
                  minLines: 1,
                  onChanged: (value){
                    setState(() {
                      firstvalue = double.parse(value)  ;
                    });
                  },
                )),
                Expanded(flex: 1, child: Icon(Icons.create)),
                Expanded(flex: 3, child: TextField(
                  keyboardType: TextInputType.number ,
                  decoration: InputDecoration(
                    enabled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 5,
                          color: Colors.cyan
                      ),
                    ),
                    hintText: 'first value',
                  ),
                  style: TextStyle(
                    backgroundColor: Colors.tealAccent,
                  ),
                  autofocus: true,
                  maxLength: 5,
                  minLines: 1,

                  onChanged: (value){
                    setState(() {
                      scoundvalue = double.parse(value) ;
                    });
                  },
                )),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: RaisedButton.icon(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      icon:Icon(Icons.add),
                      color: Colors.blue,
                      label: Text('add'),
                      onPressed: (){
                        setState(() {
                          result= firstvalue+scoundvalue ;
                        });
                      }),
                ),
                Expanded(
                    flex: 1,
                    child: RaisedButton.icon(

                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        icon:Icon(Icons.remove),
                        color: Colors.blue,
                        label: Text('div'),
                        onPressed: (){
                          setState(() {
                            result = firstvalue / scoundvalue;
                          });
                        }
                        )),
                Expanded(
                    flex: 1,
                    child: RaisedButton.icon(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        icon:Icon(Icons.stars_rounded),
                        color: Colors.blue,
                        label: Text('multi'),
                        onPressed: (){
                          setState(() {
                            result= firstvalue * scoundvalue;
                          });
                        })),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text('Result $result'),
          ],
        ),
      ),
    );
  }
}
