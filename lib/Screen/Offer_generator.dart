import 'package:flutter/material.dart';

import '../Widgets/Offer_generator.dart';


class OfferG extends StatelessWidget {
  static const routeName = '/offergenerator';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OfferGenerator() 
    );
  }
}