import 'package:flutter/material.dart';


main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),


    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  SnackbarMessage(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)));


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Greeting App"),
        toolbarHeight: 20.6,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hello, World!",
            style: TextStyle(color: Colors.red,
                fontWeight: FontWeight.bold,
              fontSize: 33,
            ),),
         Text("Welcome to Flutter!" ,style: TextStyle(
           fontSize: 20,
         ),),
         Image.asset("assets/images/img1.png"),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            SnackbarMessage('Button Pressed!',context);},
              child: Text("Press Me"),
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),),
          )
        ],
      ),
    );
  }
}
