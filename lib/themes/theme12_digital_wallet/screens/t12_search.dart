import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
// import 'package:prokit_flutter/main/utils/AppWidget.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/models/T12Models.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_colors.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_constant.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_data_generator.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_widget.dart';

class T12SearchScreen extends StatefulWidget {
  static String tag = '/T12Search';

  @override
  T12SearchScreenState createState() => T12SearchScreenState();
}

class T12SearchScreenState extends State<T12SearchScreen> {
  TextEditingController controller = TextEditingController();
  List<T12Service> searchDataList = [];

  @override
  void initState() {
    super.initState();
    searchDataList.addAll(getSearchList());
  }

  @override
  Widget build(BuildContext context) {
    // changeStatusColor(appStore.appBarColor!);

    var searchList = ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.only(
            left: spacing_standard_new,
            right: spacing_standard_new,
            top: spacing_standard_new),
        itemCount: searchDataList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(bottom: spacing_standard),
            decoration: BoxDecoration(
              color: context.scaffoldBackgroundColor,
              // showShadow: true,
            ),
            child: Row(
              children: <Widget>[
                Image.asset(
                  searchDataList[index].img,
                  width: 24,
                  height: 24,
                  color: t12_colors[index % t12_colors.length],
                ).paddingRight(spacing_standard_new),
                Expanded(
                  child: Text(
                    searchDataList[index].serviceName,
                    style: TextStyle(
                      fontSize: textSizeMedium,
                      color: t12_text_color_primary,
                    ),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 20,
                  color: t12_text_color_primary,
                )
              ],
            ).paddingAll(spacing_middle),
          );
        });
    return Scaffold(
      appBar: AppBar(
        title: toolBarTitle("Search"),
        leading: Icon(Icons.close, color: t12_text_color_primary).onTap(() {
          finish(context);
        }),
        iconTheme: IconThemeData(color: t12_text_color_primary),
        backgroundColor: t12_primary_color,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          16.height,
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                      left: spacing_standard_new, right: spacing_standard_new),
                  decoration: BoxDecoration(
                    // showShadow: true,
                    borderRadius: BorderRadius.circular(spacing_standard),
                  ),
                  child: TextFormField(
                    controller: controller,
                    textInputAction: TextInputAction.search,
                    onFieldSubmitted: (arg) {},
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Search a service",
                      hintStyle: TextStyle(
                          fontSize: textSizeLargeMedium,
                          color: t12_text_secondary),
                      prefixIcon: Icon(
                        Icons.search,
                        color: t12_text_secondary,
                        size: 20,
                      ),
                    ),
                    style: TextStyle(
                        fontSize: textSizeNormal,
                        color: t12_text_color_primary,
                        fontFamily: fontRegular),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: spacing_standard_new),
                decoration: BoxDecoration(
                    // showShadow: true,
                    borderRadius: BorderRadius.circular(spacing_standard),
                    color: context.scaffoldBackgroundColor),
                child: Icon(
                  Icons.filter_list,
                  color: t12_primary_color,
                  size: 30,
                ).paddingAll(spacing_standard),
              )
            ],
          ),
          Expanded(
            child: searchList,
          )
        ],
      ),
    );
  }
}
