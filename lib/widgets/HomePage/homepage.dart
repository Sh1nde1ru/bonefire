import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: TextStyle(
            color: Theme.of(context).colorScheme.tertiary,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.bluetooth,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        foregroundColor: Theme.of(context).colorScheme.tertiary,
                        title: Text(
                          'Blutetooth ssid setup',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.tertiary),
                        ),
                      ),
                      body: Text(
                        'text',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
