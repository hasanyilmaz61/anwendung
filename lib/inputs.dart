import 'package:anwendung/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './icons.dart';

class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  String secilicinsiyet = "";
  double icilensigara = 0;
  double sporyapma = 0;
  int boy = 170;
  int kilo = 80;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Myconteiner(
                    child: buildRowoutbutton("BOY"),
                  ),
                ),
                Expanded(
                  child: Myconteiner(
                    child: buildRowoutbutton("KILO"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Myconteiner(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "kac gun spor yapiyorsun?",
                  style: textmetin,
                ),
                Text(
                  "${sporyapma.round().toString()}",
                  style: textint,
                ),
                Slider(
                    min: 0,
                    max: 7,
                    value: sporyapma,
                    onChanged: (double nevValue) {
                      setState(() {
                        sporyapma = nevValue;
                      });
                    })
              ],
            )),
          ),
          Expanded(
            child: Myconteiner(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "gunde kac sigara iciyorsunuz?",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "${icilensigara.round().toString()}",
                    style: textint,
                  ),
                  Slider(
                      min: 0,
                      max: 30,
                      value: icilensigara,
                      onChanged: (double nevValue) {
                        setState(() {
                          icilensigara = nevValue;
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        secilicinsiyet = "MAN";
                      });
                    },
                    child: Myconteiner(
                      renk: secilicinsiyet == "WOMAN"
                          ? Colors.black
                          : Colors.white,
                      child: Iconconteiner(
                          icon: FontAwesomeIcons.venus, text: "WOMAN"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        secilicinsiyet = "MAN";
                      });
                    },
                    child: Myconteiner(
                      renk: secilicinsiyet == "MAN"
                          ? Colors.white54
                          : Colors.white,
                      child: Iconconteiner(
                        icon: FontAwesomeIcons.mars,
                        text: "MAN",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row buildRowoutbutton(String element) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            element,
            style: textmetin,
          ),
        ),
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            element == "BOY" ? "${boy.toString()}" : "${kilo.toString()}",
            style: textint,
          ),
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          OutlinedButton(
            onPressed: () {
              setState(() {
                element == "BOY" ? boy++ : kilo++;
              });
            },
            child: Icon(
              Icons.add,
            ),
          ),
          OutlinedButton(
            onPressed: () {
              setState(() {
                element == "KILO" ? kilo-- : boy--;
              });
            },
            child: Icon(Icons.minimize),
          ),
        ]),
      ],
    );
  }
}
