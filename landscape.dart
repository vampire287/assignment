import 'package:assignment/screens/nextpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/Cards_landscape.dart';

class landscape extends StatelessWidget {
  const landscape({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
      fontSize: 60,
      color: Colors.white,
    );

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          width:MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //click button to go to the next Page
              Align(
                alignment:  Alignment.centerLeft,
                child: IconButton(
                  iconSize: 50,
                  icon: const Icon(Icons.arrow_back_outlined,
                      color: Colors.white),
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'MEAT PACKING',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              //click button to exit the app
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  iconSize: 50,
                  icon: const Icon(Icons.play_arrow, color: Colors.white),
                  onPressed: () {
                    Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  NextPage())
                );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Cards2('PLU', '  1 ', textStyle),
                Cards2('Chicken Curry Cut', '', textStyle),
              ],
            ),
            Row(
              children: [
                Cards2('Tare', '5 g', textStyle),
                Cards2('MRP', '\u{20B9}${299.0}', textStyle),
              ],
            ),
            Row(
              children: [
                Cards2('Weight', '0 g', textStyle),
                Cards2('Price', '\u{20B9}${0.0}', textStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
