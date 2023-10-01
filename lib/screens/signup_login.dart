import 'package:flutter/material.dart';

class SignupLogin extends StatefulWidget {
  const SignupLogin({super.key});

  @override
  State<SignupLogin> createState() => _SignupLoginState();
}

class _SignupLoginState extends State<SignupLogin>
    with TickerProviderStateMixin {
  late TabController mytabcontroller;

  @override
  void initState() {
    mytabcontroller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    mytabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffe9e9e9),
          body: Padding(
            padding:
                const EdgeInsets.only(top: 40, left: 40, right: 40, bottom: 0),
            child: Column(
              children: [
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: const Color(0xffD1d1d1),
                      borderRadius: BorderRadius.circular(16)),
                  child: TabBar(
                      controller: mytabcontroller,
                      unselectedLabelColor:
                          const Color(0xff0D0C0C).withOpacity(0.58),
                      indicator: BoxDecoration(
                          color: const Color(0xff333333),
                          borderRadius: BorderRadius.circular(16)),
                      labelColor: const Color(0xffF2F2F2),
                      tabs: const [
                        Tab(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ]),
                ),
                const SizedBox(height: 100),
                Expanded(
                  child: TabBarView(controller: mytabcontroller, children: [
                    //signup screen column
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Email address...",
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      const BorderSide(color: Colors.blue),
                                )),
                          ),
                          const SizedBox(height: 50),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Password...",
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      const BorderSide(color: Colors.blue),
                                )),
                          ),
                          const SizedBox(height: 80),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors.black.withOpacity(0.9),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              onPressed: () {
                                mytabcontroller.animateTo(1);
                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 20),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Color(0xfff5f5f5), fontSize: 20),
                                ),
                              )),
                          const SizedBox(height: 80),
                          const Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 1.5,
                                  color: Color(0xffA1A1A1),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "OR with",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 1.5,
                                  color: Color(0xffA1A1A1),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 70),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                  "images/googlelogo.png",
                                ),
                              ),
                              const SizedBox(
                                width: 70,
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                  "images/facebooklogo.png",
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    //login screen column
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Email address...",
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      const BorderSide(color: Colors.blue),
                                )),
                          ),
                          const SizedBox(height: 50),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Password...",
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      const BorderSide(color: Colors.blue),
                                )),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Forget Password ?",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        decoration: TextDecoration.underline),
                                  ))
                            ],
                          ),
                          const SizedBox(height: 50),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors.black.withOpacity(0.9),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              onPressed: () {},
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 70, vertical: 20),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Color(0xfff5f5f5), fontSize: 20),
                                ),
                              )),
                          const SizedBox(height: 57),
                          const Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 1.5,
                                  color: Color(0xffA1A1A1),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "OR with",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 1.5,
                                  color: Color(0xffA1A1A1),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 70),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                  "images/googlelogo.png",
                                ),
                              ),
                              const SizedBox(
                                width: 70,
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                  "images/facebooklogo.png",
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
