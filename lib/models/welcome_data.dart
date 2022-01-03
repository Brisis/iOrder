class SliderModel {
  String imageAssetPath;
  String title;
  String desc;

  SliderModel({required this.imageAssetPath, required this.title, required this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = <SliderModel>[
    SliderModel(title: 'Variety of food', imageAssetPath: 'assets/food.png', desc: 'Setup your location to start exploring restaurants around you'),
    SliderModel(title: 'Quick search', imageAssetPath: 'assets/search.png', desc: 'Setup your location to start exploring restaurants around you'),
    SliderModel(title: 'Search for a place', imageAssetPath: 'assets/location.png', desc: 'Setup your location to start exploring restaurants around you'),
    SliderModel(title: 'Fast delivery', imageAssetPath: 'assets/delivery.png', desc: 'Setup your location to start exploring restaurants around you'),
  ];

  return slides;
}
