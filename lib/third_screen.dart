import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Management Employees',
        ),
        leading: const Icon(
          Icons.arrow_circle_left,
          size: 50,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        margin: const EdgeInsets.only(top: 40),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      hintText: 'Searching people',
                      hintStyle: TextStyle(color: Colors.grey),
                      //fillColor: Colors.white10,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  )),
                  const Icon(Icons.search, size: 30, color: Colors.grey)
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    List("Amber Griffin", "online"),
                    List("Tyler Banks", "online"),
                    List("Kathryan Hill", "Last seen 3 min ago"),
                    List("Andreea Wells", "Last seen 10 min ago"),
                    List("User", "Last seen 5 min ago"),
                    List("User", "online"),
                    List("Andreea Wells", "online"),
                    List("Amber Griffin", "online"),
                    List("Amber Griffin", "online"),
                    List("Amber Griffin", "online"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class List extends StatelessWidget {
  String title;

  String subtitle;

  List(
    String this.title,
    String this.subtitle, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(children: const [
        CircleAvatar(
          backgroundColor: Colors.lightBlue,
        ),
        Padding(
          padding: EdgeInsets.only(left: 25, top: 20),
          child: Icon(
            Icons.check_circle,
            color: Colors.blue,
            size: 20,
          ),
        )
      ]),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(
        Icons.circle,
        color: Colors.green,
        size: 14,
      ),
    );
  }
}
