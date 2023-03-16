import 'package:flutter/material.dart';

void main() => runApp(RestaurantApp());

class RestaurantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/restaurant_logo.png',
              width: 200.0,
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              child: Text('View Menu'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPage()),
                );
              },
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              child: Text('View Location'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LocationPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView(
        children: <Widget>[
          MenuItem('Steak', 'A juicy cut of beef cooked to perfection.',
              'assets/images/steak.png', '\$24.99'),
          MenuItem('Pasta', 'A classic Italian dish with your choice of sauce.',
              'assets/images/pasta.png', '\$12.99'),
          MenuItem('Burger', 'A delicious burger with all the fixings.',
              'assets/images/burger.png', '\$8.99'),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final String price;

  MenuItem(this.title, this.description, this.imagePath, this.price);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              imagePath,
              width: 100.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title, style: Theme.of(context).textTheme.headline6),
                    SizedBox(height: 8.0),
                    Text(description),
                    SizedBox(height: 8.0),
                    Text(price, style: Theme.of(context).textTheme.subtitle1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
      ),
      body: Center(
        child: Text('123 Main St.\nAnytown, USA'),
      ),
    );
  }
}
