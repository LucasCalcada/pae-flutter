import 'package:flutter/material.dart';

void main(){
    runApp(App());
}

class App extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: HomePage(),
        );
    }
}

class HomePage extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text("Home Page"),
                backgroundColor: const Color.fromARGB(255, 125, 96, 161),
            ),
            body: const Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text(
                            "Every Purchase\nWill be Made\nWith Pleasure",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 48,
                                fontWeight: FontWeight.bold
                            ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Text("Buy and Enjoy"),
                        ),
                        RoundedButton(
                              buttonText: "Start Shopping",
                              buttonColor: Color.fromARGB(255, 125, 96, 161),
                              textColor: Colors.white,
                              width: 350,
                              height: 50,
                        ),
                        Padding(
                            padding: EdgeInsets.all(25),
                            child: SizedBox(
                                width: 350,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        RoundedButton(
                                            buttonText: "Learn More", 
                                            buttonColor: Colors.white,
                                            textColor: Colors.black,
                                            width: 170,
                                            height: 50,
                                        ),
                                        RoundedButton(
                                            buttonText: "Login", 
                                            buttonColor: Colors.white,
                                            textColor: Colors.black,
                                            width: 170,
                                            height: 50,
                                        ),
                                    ],
                                ),
                            ),
                        )
                    ]
                ),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: (){},
                backgroundColor: const Color.fromARGB(255, 125, 96, 161),
                child: const Icon(Icons.home),
            ),
        );
    }
}

class RoundedButton extends StatelessWidget{
    final String buttonText;
    final Color textColor;
    final Color buttonColor;
    final double width;
    final double height;

    const RoundedButton({
        required this.buttonText,
        required this.buttonColor,
        required this.textColor,
        required this.width,
        required this.height
    });

    @override 
    Widget build(BuildContext context) {
        return SizedBox(
          width: width,
          height: height,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(buttonColor),
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(360.0),
                          side: const BorderSide(
                              color: Color.fromARGB(255, 125, 96, 161)
                          )
                      ),
                  ),
              ),
              onPressed: (){}, 
              child: Text(
                  buttonText,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: textColor,
                      fontSize: 20
                  ),
              )
          ),
        );
    }
}