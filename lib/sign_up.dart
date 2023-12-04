import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff1f252f),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Sign up with email",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1f252f),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .04),
            const Text(
              "YOUR NAME",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xff1f252f),
              ),
              // textAlign: TextAlign.left, //text align to the left
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .01),
            TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  )),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .04),
            const Text(
              "YOUR EMAIL ADRESS",
              //  textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xff1f252f),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .01),
            TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  )),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .04),
            const Text(
              "YOUR PASSWORD",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xff1f252f),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .01),
            TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  )),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .04),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff5da800))),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("SIGN UP"),
                    ],
                  ),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
             const  Center(
                 child: Text(
                    "By continuing you agree accept our",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff1f252f),
                    ),
                  ),
               ),
            const Center(
                child: Text(
              "Privacy policy & terms of service.",
          style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff1f252f),
                  ),  )),
          ],
        ),
      ),
    );
  }
}
