import 'package:flutter/material.dart';
import 'package:newsapp/helper/data.dart';
import 'package:newsapp/helper/news.dart';
import 'package:newsapp/models/artical_model.dart';
import 'package:newsapp/models/catagory_model.dart';
import 'package:newsapp/widgets/Catagory_widget.dart';
import 'package:newsapp/widgets/artical_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CatagoryModel> catagries = <CatagoryModel>[];
  List<ArticalModel> articales = <ArticalModel>[];
  bool _loading = true;
  @override
  void initState() {
    super.initState();
    catagries = getCategories();
    getNews();
  }

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    articales = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              scrollable: false,
              title: Text(
                "Do you really want to exit the app..!",
              ),
              actions: [
                ElevatedButton(
                  child: Text("No"),
                  onPressed: () => Navigator.pop(context, false),
                ),
                ElevatedButton(
                  child: Text("Yes"),
                  onPressed: () => Navigator.pop(context, true),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Flutter"),
              Text(
                "News",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          elevation: 0.0,
        ),
        body: _loading
            ? Center(
                child: Container(
                  child: CircularProgressIndicator(),
                ),
              )
            : SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      //  Catagories...
                      Container(
                        height: 120,
                        child: Card(
                          child: ListView.builder(
                            itemCount: catagries.length,
                            itemBuilder: (context, index) {
                              return CatagoryTile(
                                imageUrl: catagries[index].imageUrl,
                                catagoryName: catagries[index].catagoryName,
                              );
                            },
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),

                      // Articals
                      Container(
                        padding: EdgeInsets.only(top: 16),
                        child: ListView.builder(
                            itemCount: articales.length,
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Card(
                                shadowColor: Colors.black,
                                borderOnForeground: true,
                                child: BlogTile(
                                  imageUrl: articales[index].urlToImage,
                                  title: articales[index].title,
                                  desc: articales[index].description,
                                  url: articales[index].url,
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
