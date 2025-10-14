import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();

  bool isSecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 241, 224),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // welcome message....
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: Text(
                  "Welcome Back !",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: Text(
                  "Please Enter Your Personal Data",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                ),
              ),

              SizedBox(height: 80),

              // Email section ...........
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text(
                      "E-mail",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey[700],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),

              // Emal Text from field.......
              Padding(
                padding: const EdgeInsets.only(right: 35, left: 35),
                child: TextFormField(
                  controller: _controllerEmail,
                  decoration: InputDecoration(
                    hint: Text(
                      "Enter your email",
                      style: TextStyle(color: Colors.grey),
                    ),
                    filled: true,
                    fillColor: Colors.white,

                    // when the field is not focused
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),

                    // focushed when user is typing
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),

                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),

                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                ),
              ),

              //.............................
              SizedBox(height: 25),

              /// passwoed section..........................
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text(
                      "Enter Your Password",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey[700],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),

              // password textFrom field......
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),

                child: TextFormField(
                  controller: _controllerPassword,
                  obscureText: isSecure,

                  decoration: InputDecoration(
                    hint: Text(
                      "Password",
                      style: TextStyle(color: Colors.grey),
                    ),

                    filled: true,
                    fillColor: Colors.white,

                    suffixIcon: IconButton(
                      icon: Icon(
                        isSecure ? Icons.visibility_off : Icons.visibility,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () {
                        isSecure = !isSecure;
                        setState(() {});
                      },
                    ),

                    // when the text field is not focused.
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),

                    // when the text field is foucsed.....
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.white, width: 1),
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.white, width: 1),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              // forget password.................
              Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: TextButton(
                      onPressed: () {
                        // forget password action
                      },
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 90, 66, 133),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              // Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/homepage");
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff8EE88E),
                          Color(0xff80D180),
                          Color(0xff6BAE6B),
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),

                    child: Center(
                      child: Text(
                        "Log in",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 20),
                  Expanded(child: Divider(color: Colors.blueGrey, height: 0.3)),
                  SizedBox(width: 10),

                  Text(
                    "or sign In with",
                    style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                  ),
                  SizedBox(width: 10),
                  Expanded(child: Divider(color: Colors.blueGrey, height: 0.3)),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Image.asset("assets/image/facebook.png"),
                  SizedBox(width: 60),
                  Image.asset("assets/image/appleid.png"),
                  SizedBox(width: 60),
                  Image.asset("assets/image/gmail.png"),
                ],
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),

      bottomNavigationBar: SizedBox(
        height: 100,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              "Don't have any account?",
              style: TextStyle(fontSize: 14, color: Colors.blueGrey),
            ),
            Text(
              " Sign up",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
