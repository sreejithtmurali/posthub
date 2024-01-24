import 'package:flutter/material.dart';
import 'package:posthub/core/app_export.dart';
import 'package:posthub/widgets/custom_elevated_button.dart';
import 'package:posthub/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditPage extends StatefulWidget {
  const EditPage({Key? key})
      : super(
          key: key,
        );

  @override
  EditPageState createState() => EditPageState();
}

class EditPageState extends State<EditPage>
    with AutomaticKeepAliveClientMixin<EditPage> {
  TextEditingController addKeywordsController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: _buildScrollView(context),
        ),
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
                  controller: addKeywordsController,
                  hintText: "Add upto 10 Keywords",
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                SizedBox(height: 3.v),
                Text(
                  "Add a comma (,) to separate keyword ",
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 26.v),
                CustomElevatedButton(
                  text: "Update Campaign",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
