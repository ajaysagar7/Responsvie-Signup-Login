// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_example_1/src/extensions/padding_extension.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final Function(String) onChanged;
  final String hintText;
  final String labelText;
  final String? errorText;
  final IconData iconData;
  const CustomTextFieldWidget({
    Key? key,
    required this.textEditingController,
    required this.onChanged,
    required this.hintText,
    required this.labelText,
    this.errorText,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(iconData),
            ),
            prefixIconColor: Colors.purple,

            // labelText: labelText,
            fillColor: Color(0xffe7dcf5),
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 12.sp),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50.r)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50.r)),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        5.verticalSpace,
        errorText != null
            ? Text(errorText!, style: Theme.of(context).textTheme.bodyText1)
            : SizedBox.shrink()
      ],
    );
  }
}
