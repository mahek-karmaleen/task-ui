import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_circle_left,
          size: 50,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.image,
                  color: Colors.white,
                ),
                Text(
                  "Image Here",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        30,
                      ),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        "Come In\n Office",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 30),
                      ),
                    ),
                    const Text(
                      'Username',
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.w500),
                    ),
                    const UserInput(c: Colors.white),
                    const Text(
                      'Password',
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.w500),
                    ),
                    const UserInput(),
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.end,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          backgroundColor: Colors.lightBlue,
                          minimumSize: const Size.fromHeight(50)),
                      child: const Text("Login"),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class UserInput extends StatelessWidget {
  const UserInput({
    Color? c,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          suffixIcon: Icon(Icons.remove_red_eye),
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }
}
