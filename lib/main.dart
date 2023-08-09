import 'package:flutter/material.dart';
import 'package:my_app/Widgets/introPage.dart';
import 'package:my_app/Widgets/rounded_wedgit.dart';
import 'package:my_app/Widgets/splashScreen.dart';
import 'package:my_app/ui_helper/util.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
       textTheme: TextTheme(
         displayLarge: TextStyle(fontSize:20,fontFamily: 'Borel Font'),
         titleMedium: TextStyle(color:Colors.orange,fontSize: 20,fontStyle: FontStyle.italic),
       ),
       ),

       //colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
       // useMaterial3: true,

      home:splashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  callBack(){
    print('clicked!!!');    //--------> function created
  }
  var nameText = TextEditingController();  // ------> edited  (controller)
  var mailText = TextEditingController();
  var phoneText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    var arrnames  =  ['raman','sneha','akash','bablu','myself','kya kr rhaa','ram','ramu','kaka','mali'];
    var arrcolors = [Colors.purple,Colors.red,Colors.orange,Colors.yellow,Colors.green];
    var time =DateTime.now() ;  //  -------> class
    return Scaffold(
       appBar: AppBar(
         //backgroundColor: Colors.yellow,

         //color:Colors.amberAccent,
         title: Text('Login page',style: TextStyle(fontSize: 20,color: Colors.yellow,),),
       ),
      body:Center(child: Text('hello',style: Theme.of(context).textTheme.displayLarge,)),

    );

  }
}
