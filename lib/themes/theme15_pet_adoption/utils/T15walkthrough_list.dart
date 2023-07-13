import 'package:nb_utils/nb_utils.dart';

List<WalkThroughModelClass> walkThroughList() {
  List<WalkThroughModelClass> tempList = [];
  tempList.add(
    WalkThroughModelClass(
      title: 'Stay Informed',
      subTitle: "Stay Instantly Informed When There Is An Emergency Or Crises Around You, Stay Alarrt!",
      // image: 'images/theme15/walkthrough_images/walkthrough_image1.png',
    ),
  );
  tempList.add(
    WalkThroughModelClass(
      title: 'See it, Alarrt It!',
      subTitle: "Witnessing a fatal road accident, fire outbreak or life threatning crises? Alarrt it, Save Lives!",
      // image: 'images/theme15/walkthrough_images/walkthrough_image2.png',
    ),
  ); 
  tempList.add(
    WalkThroughModelClass(
      title: 'Get Help',
      subTitle: "Get Speedy Help If You Are In A Personal Distress/ Emergency.",
      // image: 'images/theme15/walkthrough_images/walkthrough_image_4.png',
    ),
  );
  tempList.add(
    WalkThroughModelClass(
      title: 'Safety Tips',
      subTitle: "Safety & First Aid Tips. Emergencies Can Strike Anytime, Never Be Caught Helpless, Be Secured!",
      // image: 'images/theme15/walkthrough_images/walkthrough_image_4.png',
    ),
  );
  return tempList;
}
