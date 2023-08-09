import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class introPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
      ),
      body: Center(
        child: Container(
          height: 200,
          child: Column(
              children: [
                Text('Welcome',style: TextStyle(fontStyle: FontStyle.italic),),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return MyHomePage(title: 'hoem page');
                  }));
                }, child: Text('Next')),
              ],
            ),
        ),
      ),

    );
  }
}
