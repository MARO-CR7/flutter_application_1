import 'package:flutter/material.dart';
import 'package:flutter_application_1/counterprovider.dart';
import 'package:provider/provider.dart';

class Teampage extends StatelessWidget {
  const new({super.key});
  @override
  Widget build(BuildContext context) {
    var providerobject = Provider.of<Counterprovider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Basketball Teams"),
      ),
      body: Column(
        mainAxisAlignment: .center,
        children: [
          Text("🏀", style: TextStyle(fontSize: 50)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Team 1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  Consumer<Counterprovider>(
                    builder: (context, value, child) => Text(
                      "${value.team1}",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shadowColor: Colors.black,
                    ),
                    onPressed: () {
                      providerobject.increaseCount1team1();
                    },
                    child: Text(
                      "+1 Point",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shadowColor: Colors.black,
                    ),
                    onPressed: () {
                      providerobject.increaseCount2team1();
                    },
                    child: Text(
                      "+2 Point",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shadowColor: Colors.black,
                    ),
                    onPressed: () {
                      providerobject.increaseCount3team1();
                    },
                    child: Text(
                      "+3 Point",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 350,
                child: VerticalDivider(
                  thickness: 2,
                  width: 30,
                  color: Colors.black,
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Team 2",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 15),
                  Consumer<Counterprovider>(
                    builder: (context, value, child) => Text(
                      "${value.team2}",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shadowColor: Colors.black,
                    ),
                    onPressed: () {
                      providerobject.increaseCount1team2();
                    },
                    child: Text(
                      "+1 Point",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shadowColor: Colors.black,
                    ),
                    onPressed: () {
                      providerobject.increaseCount2team2();
                    },
                    child: Text(
                      "+2 Point",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shadowColor: Colors.black,
                    ),
                    onPressed: () {
                      providerobject.increaseCount3team2();
                    },
                    child: Text(
                      "+3 Point",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 100),

          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              providerobject.resetcount();
            },
            child: Text("Reset", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
