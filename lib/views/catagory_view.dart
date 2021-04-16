// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/helper/catagorynews.dart';
// import 'package:newsapp/helper/news.dart';
import 'package:newsapp/models/artical_model.dart';
import 'package:newsapp/widgets/artical_widget.dart';

class CatagoryView extends StatefulWidget {
  final String category;
  CatagoryView({this.category});

  @override
  _CatagoryViewState createState() => _CatagoryViewState();
}

class _CatagoryViewState extends State<CatagoryView> {
  bool _loading = true;

  List<ArticalModel> articales = <ArticalModel>[];
  @override
  void initState() {
    super.initState();
    getCategoriesNews();
  }

  getCategoriesNews() async {
    CatagoryNewsClass newsClass = CatagoryNewsClass();
    await newsClass.getNews(widget.category);
    articales = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.save),
            ),
          )
        ],
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
                  children: [
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
    );
  }
}
