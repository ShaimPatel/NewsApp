import 'package:newsapp/models/catagory_model.dart';

List<CatagoryModel> getCategories() {
  List<CatagoryModel> catagory = <CatagoryModel>[];
  CatagoryModel catagoryModel = new CatagoryModel();

  //1
  catagoryModel = new CatagoryModel();
  catagoryModel.catagoryName = "Business";
  catagoryModel.imageUrl =
      "https://images.unsplash.com/photo-1603201667230-bd139210db18?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzJ8fGJ1c3NpbmVzc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60";
  catagory.add(catagoryModel);

  //2
  catagoryModel = new CatagoryModel();
  catagoryModel.catagoryName = "Entertainment";
  catagoryModel.imageUrl =
      "https://images.unsplash.com/photo-1469032923574-4f1413034019?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8ZW50ZXJ0YWlubWVudHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60";
  catagory.add(catagoryModel);
  //3
  catagoryModel = new CatagoryModel();
  catagoryModel.catagoryName = "General";
  catagoryModel.imageUrl =
      "https://images.unsplash.com/photo-1450101499163-c8848c66ca85?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzl8fGdlbmVyYWx8ZW58MHx8MHw%3D&auto=format&fit=crop&w=400&q=60";
  catagory.add(catagoryModel);
  //4
  catagoryModel = new CatagoryModel();
  catagoryModel.catagoryName = "health";
  catagoryModel.imageUrl =
      "https://images.unsplash.com/photo-1477332552946-cfb384aeaf1c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8aGVhbHRofGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60";
  catagory.add(catagoryModel);
  //5
  catagoryModel = new CatagoryModel();
  catagoryModel.catagoryName = "Science";
  catagoryModel.imageUrl =
      "https://images.unsplash.com/photo-1517976487492-5750f3195933?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fHNjaWVuY2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60";
  catagory.add(catagoryModel);
  //6
  catagoryModel = new CatagoryModel();
  catagoryModel.catagoryName = "Sports";
  catagoryModel.imageUrl =
      "https://images.unsplash.com/photo-1517649763962-0c623066013b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8c3BvcnRzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60";
  catagory.add(catagoryModel);
  //7
  catagoryModel = new CatagoryModel();
  catagoryModel.catagoryName = "Technology";
  catagoryModel.imageUrl =
      "https://images.unsplash.com/photo-1555949963-aa79dcee981c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGluZm9ybWF0aW9uJTIwdGVjaG5vbG9neXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60";
  catagory.add(catagoryModel);

  return catagory;
}
