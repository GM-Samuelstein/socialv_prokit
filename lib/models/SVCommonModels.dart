class SVDrawerModel {
  String? title;
  String? image;

  SVDrawerModel({this.image, this.title});
}

List<SVDrawerModel> getDrawerOptions() {
  List<SVDrawerModel> list = [];

  list.add(SVDrawerModel(
      image: 'images/socialv/icons/ic_Profile.png', title: 'Timeline'));
  list.add(SVDrawerModel(
      image: 'images/socialv/icons/ic_2User.png', title: 'Explore'));
  list.add(SVDrawerModel(
      image: 'images/socialv/icons/ic_3User.png', title: 'Communities'));
  list.add(SVDrawerModel(
      image: 'images/socialv/icons/ic_Video.png', title: 'Videos'));
  list.add(SVDrawerModel(
      image: 'images/socialv/icons/ic_Document.png', title: 'Categories'));
  list.add(SVDrawerModel(
      image: 'images/socialv/icons/ic_Send.png', title: 'Contact Us'));
  list.add(SVDrawerModel(
      image: 'images/socialv/icons/ic_Star.png', title: 'Settings'));
  list.add(SVDrawerModel(
      image: 'images/socialv/icons/ic_Logout.png', title: 'Logout'));

  return list;
}
