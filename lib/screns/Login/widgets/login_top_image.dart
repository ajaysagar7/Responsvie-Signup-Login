import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginTopImageWidget extends StatelessWidget {
  const LoginTopImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _headingWIdget(),
        20.verticalSpace,
        _imageWidget(),
        20.verticalSpace,
      ],
    );
  }

  _headingWIdget() {
    return Text("LOGIN");
  }

  _imageWidget() {
    return Row(
      children: [
        Spacer(),
        Expanded(
          flex: 8,
          child: SvgPicture.asset(
            "assets/icons/login.svg",
            // width: 0.5.sw,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
