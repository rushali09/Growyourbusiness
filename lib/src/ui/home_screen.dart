import 'package:flutter/material.dart';
import '../Blocs/home_screen_block.dart';
import '../models/unsplash_images.dart';

class HomeScreen extends StatefulWidget {

  static const routeName ='/searchImage';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    bloc.init();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find your Ideas!!!"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter a word',
                        suffixIcon: Icon(Icons.search)),
                    onChanged: (value) {
                      bloc.changeQuery(value);
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: StreamBuilder(
                    stream: bloc.photosList,
                    builder: (context, AsyncSnapshot<Photos> snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                            itemCount: snapshot.data.results.length,
                            itemBuilder: (context, index) {
                              return listItem(snapshot.data.results[index]);
                            });
                      } else {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/search_image.png',
                                width: 180.0,
                                height: 180.0,
                              ),
                              SizedBox(height: 20.0),
                              Flexible(
                                  child: Text(
                                'Type a word',
                               
                              ))
                            ],
                          ),
                        );
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget listItem(Result result) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 10.0,
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Image.network(result.urls.regular),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  child: FadeInImage.assetNetwork(
                      width: 30,
                      height: 30,
                      placeholder: 'assets/images/user.png',
                      image: result.user.profileImage.medium),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                SizedBox(width: 10.0),
                Text(result.user.name),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    bloc.shareImage(result.urls.regular);
                  },
                  child: Icon(Icons.share, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}