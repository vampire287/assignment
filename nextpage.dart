import 'package:assignment/main.dart';
import 'package:flutter/material.dart';
class NextPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Next Page'),
      ),
      body: Column(
        children:  [
          const Text('ThankYou for giving me this opportunity'),
          ElevatedButton(
            child:  const Text('Home Page'),
            onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyHomePage())
                );
            },
          ),
        ],
      ),
    );
  }
}