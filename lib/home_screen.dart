import 'package:flutter/material.dart';

class home_scrren extends StatefulWidget {
  const home_scrren({Key? key}) : super(key: key);

  @override
  State<home_scrren> createState() => _home_scrrenState();
}

class _home_scrrenState extends State<home_scrren> {
  TextEditingController txtname = TextEditingController();
  String name = "";
  List l1 = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: Text(
          "Fill The Form",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: txtname,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: ("enter your email"),
                  prefixIcon: Icon(Icons.people_alt),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        name = txtname.text;
                        l1.add(name);
                      });
                    },
                    child: Icon(Icons.send_and_archive),
                  )),
            ),
            Column(
              children:
              l1.asMap().entries.map((e) => list(l1[e.key])).toList(),
            )
          ],
        ),
      ),
    );
  }
}

Widget list(String name) {
  return Column(
    children: [
      SizedBox(
        height: 10,
      ),

      Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.redAccent,
        ) ,

        alignment: Alignment.center,
        child: Text(
          "$name",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}
