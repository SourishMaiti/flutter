import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Wedding App'),
      ),
      body: Column(children: [
        // List of vendors
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Vendors',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                title: Text('Photographers'),
                subtitle: Text('Find the best photographers for your wedding'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to photographers page
                },
              ),
              ListTile(
                title: Text('Makeup and Hair'),
                subtitle: Text(
                    'Get ready for your big day with the best makeup and hair artists'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to makeup and hair page
                },
              ),
              ListTile(
                title: Text('Catering'),
                subtitle:
                    Text('Find the best caterers to make your guests happy'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to catering page
                },
              ),
              ListTile(
                title: Text('Hotels'),
                subtitle:
                    Text('Book the best hotels for your out-of-town guests'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to hotels page
                },
              ),
              ListTile(
                title: Text('Mehndi Artist'),
                subtitle: Text('Find the best mehndi artists for your wedding'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to mehndi artist page
                },
              ),
            ],
          ),
        ),

        // Venues being highlighted
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Venues',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
        ),
        Container(
            height: 200.0,
            child: Padding(
              padding:EdgeInsets.all(1) ,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                // Venue 1
                Container(
                  width: 300.0,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(

                          'https://media-cdn.tripadvisor.com/media/photo-s/22/25/ce/ea/kingsford-hotel-manila.jpg',
                          fit: BoxFit.cover,
                          height: 100,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Venue 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text('Address: 123 Main St.'),
                              Text('Capacity: 200 guests'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 300.0,
                  child: Card(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg',
                            fit: BoxFit.cover,
                            height: 100,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Venue 2',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  Text('Address: 456 Oak St.'),
                                  Text('Capacity: 150 guests'),
                                ]),
                          ),
                        ]),
                  ),
                ),
              ]),
            ))
      ]),
      // Venue 2
    );
  }
}
