import 'package:flutter/material.dart';
import 'package:new_project/sign_up.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "first flutter project",
          style: TextStyle(
            color: Color(0xff5da800),
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.camera_alt_outlined, color: Color(0xff5da800)),
          Icon(
            Icons.search_off_outlined,
            color: Color(0xff5da800),
          ),
          Icon(Icons.more_vert, color: Color(0xff5da800)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .15,
                child: const Image(image: AssetImage("assets/images/icon.png")),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .04),
              const Text(
                "Rent a home in just a minute",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1f252f),
                ),
              ),
              Text(
                "a few clicks.",
                style: TextStyle(
                    fontSize: 30, 
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    height: 1.5),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .01,
                width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                    color: const Color(0xfff51858),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              const Text(
                "Browse over 10000 listings in your ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff1f252f),
                ),
              ),
              const Text(
                "area.",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff1f252f)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .07,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff3a5998))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .07,
                          child:const Icon(Icons.facebook ) ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .02,
                        ),
                        const Text("SIGN UP WITH FACEBOOK"),
                      ],
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * .02,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                          MaterialStateProperty.all(const Color(0xff5da800))),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const SignUpView();
                      },));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.email),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * .02,
                          ),
                          const Text("SIGN UP WITH EMAIL"),
                        ],
                      ),
                    ),
                  )),
                   SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff1f252f),
                    ),
                  ),
                  Text("Log in", style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff5da800),
                ),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
