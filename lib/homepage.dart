import 'package:flutter/material.dart';
import 'package:flutter_application_1/teampage.dart';
import 'package:flutter_application_1/toggleprovider.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    var providerobject = Provider.of<Toggleprovider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: Text(
          "Quiz 1",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_active, color: Colors.white),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Consumer<Toggleprovider>(
              builder: (context, data, child) => Switch(
                value: data.istoggle,
                onChanged: (value) {
                   data.toggle(value);
                },
                activeColor: Colors.white,
                activeTrackColor: Colors.green,

                inactiveTrackColor: Colors.red,
                inactiveThumbColor: Colors.white,
              ),
            ),
            Consumer<Toggleprovider>(
              builder: (context, value, child) => Visibility(
                child: Text("ON"),
                visible: providerobject.istoggle,
                replacement: Text("OFF"),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Teampage()),
                );
              },
              child: Text("Team Page"),
            ),
          ],
        ),
      ),
    );
  }
}
