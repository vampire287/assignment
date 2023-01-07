import 'package:assignment/widgets/Cards_portrait.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:assignment/screens/nextpage.dart';

class portrait extends StatelessWidget {
  const portrait({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
      fontSize: 60,
      color: Colors.white,
    );

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          color: Colors.black,
          child: const Center(
            child: Text('MEAT PACKING',
                style: TextStyle(color: Colors.white, fontSize: 30)),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Cards1('PLU', '  1 ', textStyle),
          Cards1('Chicken Curry Cut', '', textStyle),
          Cards1('Tare', '5 g', textStyle),
          Cards1('MRP', '\u{20B9}${299.0}', textStyle),
          Cards1('Weight', '0 g', textStyle),
          Cards1('Price', '\u{20B9}${0.0}', textStyle),
          Container(width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height/10,
          color: Colors.grey,
          child: const Text(' '),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Row(
                children: <Widget>[
                  //click button to go to nextPage
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: IconButton(
                      iconSize: 50,
                      icon: const Icon(Icons.arrow_back_outlined,
                          color: Colors.white),
                      onPressed: () {
                        SystemNavigator.pop();
                      },
                    ),
                  ),
                  const VerticalDivider(color: Colors.white,thickness:2),
                  //click button to exit the app
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
