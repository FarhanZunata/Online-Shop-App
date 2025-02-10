import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailConfirmation extends StatelessWidget {
  const EmailConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff00416a),
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: (){
                    context.go('/welcome');
                  },
                  icon: Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Colors.white,
                    size: 38,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                color: Colors.white,
                child: SizedBox(
                  height: 700,
                  width: 500,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 110),
                        child: Text(
                          'Login',
                          style: GoogleFonts.exo2(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Login to start shopping',
                        style: GoogleFonts.exo2(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 50),
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Username',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 250,
                        child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                backgroundColor: Color(0xff00416a)
                            ),
                            child: Text(
                              "Login",
                              style: GoogleFonts.exo2(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 80,
              left: 85,
              child: Image.asset(
                'images/shopbag.png',
                width: 250,
              ),
            ),
          ],
        )
    );
  }
}
