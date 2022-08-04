import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color(0xfffefaf5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
              Image.asset(
                'assets/images/Login.png',
                alignment: Alignment.centerLeft,
                height: 150,
                width: 200,
              ),
              Text(
                "Hello Alex,",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Your van -  VN54 UTD",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Container(
                      height: 200.0,
                      width: 170.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFFf5b936), Color(0xFFf2e6a3)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),SizedBox(
                          height: 15.0,
                        ),
                        Text('All set.Last completed on 23-5-2022',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 13.0,),),

                        SizedBox(
                          height: 35.0,
                        ),
                        Text('Vehicle Checklist',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                          fontSize: 25.0,
                        ),),

                      ]),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      height: 200.0,
                      width: 170.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFFf5b936), Color(0xFFf2e6a3)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Icon(
                          Icons.change_circle,
                          color: Colors.red,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('Pending to be completed for this week.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontSize: 13.0,),),

                        SizedBox(
                          height: 25.0,
                        ),
                        Text('Van    Equipment Checklist',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.brown,
                            fontSize: 25.0,
                          ),),

                      ]),
                    ),
                  ],
                ),
              )
            ])),
          ),
        ));
  }
}
