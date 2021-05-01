import 'package:flutter/material.dart';

// import '../Screen/latest_design_screen.dart';
// import '../src/ui/home_screen.dart';
import '../Screen/Offer_generator.dart';


class CreateAccountWidget extends StatefulWidget {
  CreateAccountWidget({Key key}) : super(key: key);

  @override
  _CreateAccountWidgetState createState() => _CreateAccountWidgetState();
}

class _CreateAccountWidgetState extends State<CreateAccountWidget> {
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
                        hintText: "Enter Your Name",
                        labelText: "Name",
                    ),
                   
                  ),
                   
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Your Business Type",
                        labelText: "Business",
                    ),
                   
                  ),
                  
                   TextFormField(
                    decoration: InputDecoration(
                     
                        labelText:"Create Your Password",
                    ),
                    obscureText: true,
                  ),
                   TextFormField(
                    decoration: InputDecoration(
                        
                        labelText:"Confirm Password",
                    ),
                    obscureText: true,
                  ),
                         SizedBox(height: 30),
                         ElevatedButton(
                           
                           child: Text("SignUp"),
                           onPressed: (){
                               
                                  
                                  Navigator.of(context).pushNamed(OfferG.routeName);
                               
                           }
                           ),
                          ],
                           ),
                      ),
            ),
      )
      )
      ]
    );
    
    
  }
}
                                              
                
                
  
 