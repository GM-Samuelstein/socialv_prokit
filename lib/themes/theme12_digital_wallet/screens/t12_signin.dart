import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
// import 'package:socialv_prokit/main/utils/AppWidget.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_colors.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_constant.dart';
import 'package:socialv_prokit/themes/theme12_digital_wallet/utils/t12_widget.dart';

class T12SignIn extends StatefulWidget {
  static String tag = '/T12SignIn';

  @override
  T12SignInState createState() => T12SignInState();
}

class T12SignInState extends State<T12SignIn> {
  FocusNode phoneNumberFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? phone;
  String? password;
  bool autoValidate = false;
  bool passwordVisible = false;
  bool isLoading = false;
  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    // changeStatusColor(appStore.appBarColor!);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Center(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(spacing_standard),
                      // showShadow: true,
                      color: context.scaffoldBackgroundColor),
                  margin: EdgeInsets.all(spacing_standard_new),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      themeLogo().paddingOnly(
                        left: spacing_standard_new,
                        right: spacing_standard_new,
                        bottom: spacing_standard_new,
                        top: spacing_standard_new,
                      ),
                      Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            formField(context, "Phone Number",
                                prefixIcon: Icons.phone_iphone,
                                focusNode: phoneNumberFocus,
                                textInputAction: TextInputAction.next,
                                nextFocus: passwordFocus,
                                onSaved: (String? value) {
                              phone = value;
                              setState(() {});
                            }).paddingBottom(spacing_standard_new),
                            formField(
                              context,
                              "Password",
                              prefixIcon: Icons.lock_outline,
                              isPassword: true,
                              isPasswordVisible: passwordVisible,
                              validator: (value) {
                                return value!.isEmpty
                                    ? "Password Required"
                                    : '';
                              },
                              focusNode: passwordFocus,
                              onSaved: (String? value) {
                                password = value;
                              },
                              textInputAction: TextInputAction.done,
                              suffixIconSelector: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                              suffixIcon: passwordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ],
                        ),
                      ).paddingOnly(
                          left: spacing_standard_new,
                          right: spacing_standard_new,
                          top: spacing_standard_new),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 14,
                            height: 14,
                            decoration: BoxDecoration(
                                // bgColor: isRemember ? t12_primary_color : Colors.transparent,
                                color: isRemember
                                    ? t12_primary_color
                                    : t12_text_secondary),
                            child:
                                Icon(Icons.done, color: Colors.white, size: 14)
                                    .visible(isRemember),
                          ).onTap(() {
                            setState(() {
                              isRemember = !isRemember;
                            });
                          }).paddingOnly(left: 18, right: spacing_standard),
                          Expanded(
                              child: Text(
                            "Remember",
                            style: TextStyle(
                              color: t12_text_secondary,
                              fontSize: textSizeMedium,
                              // maxLine: 2,
                            ),
                          )),
                          Text(
                            "Forgot password",
                            style: TextStyle(
                              fontFamily: fontMedium,
                              fontSize: textSizeMedium,
                              color: t12_primary_color,
                            ),
                          ).paddingAll(spacing_standard_new).onTap(() {}),
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: MaterialButton(
                          padding: EdgeInsets.only(
                              top: spacing_standard_new,
                              bottom: spacing_standard_new),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: fontMedium,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  new BorderRadius.circular(spacing_standard)),
                          color: t12_primary_color,
                          onPressed: () {},
                        ),
                      ).paddingAll(spacing_standard_new),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              child: AppBar(title: Text("Login")),
            )
          ],
        ),
      ),
    );
  }
}
