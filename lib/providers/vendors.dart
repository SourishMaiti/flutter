import 'package:flutter/material.dart';

class Vendors with ChangeNotifier {
  final String title;
  final String id;
  final String imgUrl;

  Vendors({required this.id, required this.title, required this.imgUrl});

  List<Vendors> _vendors = [
    Vendors(
        id: '1',
        title: 'Photographer',
        imgUrl:
            'https://cdn.naturettl.com/wp-content/uploads/2017/04/22013824/become-professional-wildlife-photographer-1200x675-cropped.jpg'),
    Vendors(
        id: '2',
        title: 'Makeup and Hair',
        imgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2lbu93Hq3F4FkJtAanFH9pyp59gMS23OZ0A&usqp=CAU'),
    Vendors(
        id: '3',
        title: 'Decoration',
        imgUrl:
            'https://5.imimg.com/data5/UU/BE/NA/SELLER-22254777/3f7506de-37ce-40e0-8f63-6911fb1f3fc5-500x500.jpg'),
    Vendors(
        id: '4',
        title: 'Catering',
        imgUrl:
            'https://media-cdn.tripadvisor.com/media/photo-s/1b/31/ec/37/k-e-catering-services.jpg'),
    Vendors(
        id: '5',
        title: 'Hotel',
        imgUrl:
            'https://cdn.dirigible.studio/wp-content/uploads/sites/84/2016/03/22124727/Presidential_Suite_Bedroom_NEW.jpg.webp'),
    Vendors(
        id: '6',
        title: 'Mehendi Artist',
        imgUrl:
            'https://cdn0.weddingwire.in/vendor/9783/3_2/960/jpg/mehndi-artists-sayali-mehendi-artist-mehndi-design-8_15_409783-165215133450807.jpeg'),
  ];

  List<Vendors> get vendors {
    return [..._vendors];
  }
}
