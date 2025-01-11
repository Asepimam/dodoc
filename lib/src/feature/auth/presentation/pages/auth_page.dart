import 'package:dodoc/src/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xFFC7B3CC),
          child: Stack(
            children: [
              Center(
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 430,
                  height: 330,
                ),
              ),
              Positioned(
                  bottom: 40.0,
                  left: 20.0,
                  right: 20.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context.pushNamed(AppRouter.signIn.name);
                        },
                        child: Text('Sign in',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor,
                            maximumSize: Size(double.infinity, 50.0),
                            minimumSize: Size(double.infinity, 50.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            context.pushNamed(AppRouter.signUp.name);
                          },
                          child: Text('Sign up'),
                          style: ElevatedButton.styleFrom(
                              maximumSize: Size(double.infinity, 50),
                              minimumSize: Size(double.infinity, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
