import 'package:flutter/material.dart';

class OfferGenerator extends StatefulWidget {
 
  @override
  _OfferGeneratorState createState() => _OfferGeneratorState();
}

class _OfferGeneratorState extends State<OfferGenerator> {
  @override
  Widget build(BuildContext context) {
    return Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image: AssetImage("assets/images/image1.jpg"),
              fit: BoxFit.fill,
              colorBlendMode: BlendMode.darken,
              color: Colors.black45,
             ),

            Form(
                child: Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 24,
                      ),
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color:Theme.of(context).accentColor
                      )
                    ),
                  ),
                  child: Container(
                      padding: EdgeInsets.all(60),
                      child: SingleChildScrollView(
                                              child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Product Name",
                        labelText: "Product Name",
                    ),
                   
                  ),
 

                     TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter offer amount",
                        labelText: "Offer Amount",
                        
                    ),
                    keyboardType: TextInputType.number,
                   
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter offer valid date",
                        labelText: "Offer validity",
                    ),
                    
                   
                  ),

                  ]
                  )
                  )
                  )
                  )
                  )
                  ]
                  );
                   
  }
}