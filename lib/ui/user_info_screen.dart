import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class UserInfoScreen extends StatefulWidget {
  UserInfoScreen({Key key}) : super(key: key);

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  
  TextEditingController businessnameController, businesscategoryController,addressController, yearlysalesController;

DatabaseReference ref;

@override
  void initState() {
   
    super.initState();
     businessnameController = TextEditingController();
    businesscategoryController = TextEditingController();
    addressController =  TextEditingController();
    yearlysalesController = TextEditingController();
   
    ref = FirebaseDatabase.instance.reference().child('data');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(fit: StackFit.expand, children: [
          Image(
            image: AssetImage("assets/images/images1.jpg"),
            fit: BoxFit.cover,
            color: Colors.black12,
            colorBlendMode: BlendMode.darken,
          ),
          SingleChildScrollView(
                      child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 50, left: 30),
                    child: Text("Lets, Quickly Fetch Some Information ...",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 30,
                            fontStyle: FontStyle.italic))),
                Form(
                    child: Theme(
                  data: ThemeData(
                    inputDecorationTheme: InputDecorationTheme(
                      
                      labelStyle: TextStyle(color: Colors.white, fontSize: 20,fontStyle: FontStyle.italic),
                    ),
                  ),
                  child: Container(
                      child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        width: 300,
                        child: Column(
                          children: [
                            TextFormField(
                              style: TextStyle(color:Colors.white,fontSize: 20,fontStyle: FontStyle.italic),
                             controller:   businessnameController,
                              decoration: InputDecoration(
                                labelText: "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tBusiness Name",

                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.cyan[300],width: 4,),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(width: 4, color: Colors.cyan[300]),
                                ),
                              ),
                            ),
                            SizedBox(height:30),
                             TextFormField(
                               style: TextStyle(color:Colors.white,fontSize: 20,fontStyle: FontStyle.italic),
                             controller: businesscategoryController,
                              decoration: InputDecoration(
                                labelText: "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tBusiness Category",

                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.cyan[300],width: 4,),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(width: 4, color: Colors.cyan[300]),
                                ),
                              ),
                            ),
                             SizedBox(height:30),
                             TextFormField(
                               style: TextStyle(color:Colors.white,fontSize: 20,fontStyle: FontStyle.italic),
                             controller: addressController,
                              decoration: InputDecoration(
                                labelText: "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tAddress",

                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.cyan[300],width: 4,),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(width: 4, color: Colors.cyan[300]),
                                ),
                              ),
                            ),
                             SizedBox(height:30),
                             TextFormField(
                               style: TextStyle(color:Colors.white,fontSize: 20,fontStyle: FontStyle.italic),
                               controller: yearlysalesController,
                             keyboardType:TextInputType.number,
                              decoration: InputDecoration(
                                labelText: "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tYearly Sales",

                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.cyan[300],width: 4,),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(width: 4, color: Colors.cyan[300]),
                                ),
                              ),
                            ),

                          ],
                        ),
                        
                      ),
                          SizedBox(height: 50,),
                    ElevatedButton(
                      onPressed: (){
                         saveData();
                      }, 
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.cyan[300],
                        minimumSize: Size(60,60)
                      ),
                      child: Icon(Icons.arrow_forward)
                    )


                    ],
                  )),
                ))
              ],
            ),
          )
        ]));
  }


void saveData(){
    String businessname = businessnameController.text;
    String businesscategory = businesscategoryController.text;
    String address  = addressController.text;
    String yearlysales = yearlysalesController.text;
   
    Map<String,String> data = {
      "businessname" : businessname,
      "businesscategory" : businesscategory,
      "address" : address,
      "yearlysales" : yearlysales,
     
    };

  ref.push().set(data);


  }
  
}


