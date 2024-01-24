import 'package:flutter/material.dart';
import 'package:posthub/core/app_export.dart';
import 'package:posthub/widgets/custom_elevated_button.dart';
import 'package:posthub/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class OnboardOnePage extends StatefulWidget {
  const OnboardOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardOnePageState createState() => OnboardOnePageState();
}

class OnboardOnePageState extends State<OnboardOnePage>
    with AutomaticKeepAliveClientMixin<OnboardOnePage> {
  TextEditingController adduptoKeywordsvalueController =
      TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: _buildScrollView(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 31.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Keywords",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 5.v),
                CustomTextFormField(
                  controller: adduptoKeywordsvalueController,
                  hintText: "Add upto 10 Keywords",
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 3.v),
                Text(
                  "Add a comma (,) to separate keyword ",
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 26.v),
                CustomElevatedButton(
                  text: "Start Campaign",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
