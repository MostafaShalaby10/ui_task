mixin class SvgImages{
  SvgImages._();
static const svg = 'assets/svg/';
String batteryIcon = "${svg}battery.svg";
String bicycleIcon = "${svg}bicycle_icon.svg";
String cartIcon = "${svg}cart.svg";
String docIcon = "${svg}doc.svg";
String helmetIcon = "${svg}helmet_icon.svg";
String mapIcon = "${svg}map_icon.svg";
String personIcon = "${svg}person.svg";
String roadIcon = "${svg}Road.svg";
String unionIcon = "${svg}Union.svg";
String searchIcon = "${svg}search_icon.svg";
String backgroundContainer = "${svg}background_container.svg";
String listItemBackground = "${svg}list_item_background.svg";

}mixin class ImagesFiles{
  ImagesFiles._();
  static const image = 'assets/images/';
  String backGround = "${image}background.png";
  String bicycleImage = "${image}bicycle.png";
  String bicycle2Image = "${image}bicycle2.png";
  String bicycle3Image = "${image}bicycle3.png";
  String helmetImage = "${image}helmet.png";
  String ContainerBackgroundPNG = "${image}container_background.png";
  String listItemBackgroundPNG = "${image}lict_item_background.png";


}
class AppAssets with ImagesFiles, SvgImages {
  AppAssets._internal();

  factory AppAssets() => AppAssets._internal();
}