part of "dashboard_imports.dart";

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    log("init state called");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ResponsiveLayout(
              mobile: _mobileBodyWidget(),
              tablet: _tabletBodyWidget(),
              desktop: _desktopBodyWidget()),
        ),
      ),
    );
  }

  _mobileBodyWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FadeInUp(
          from: 40,
          child: SlideInUp(
            from: 50,
            child: const FlutterLogo(
              size: 100,
            ),
          ),
        ),
        20.verticalSpace,
        _inputFields(),
        20.verticalSpace,
        _buttonWidget()
      ],
    ).withSymetricPadding(horizontalPadding: 20.w);
  }

  _tabletBodyWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(
          flex: 4,
          child: FittedBox(
            fit: BoxFit.cover,
            child: FlutterLogo(
              style: FlutterLogoStyle.horizontal,
            ),
          ),
        ),
        20.horizontalSpace,
        Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _inputFields(),
                20.verticalSpace,
                Center(child: _customButonWidget())
              ],
            ).withSymetricPadding(horizontalPadding: 20.w))
      ],
    );
  }

  _desktopBodyWidget() {
    return Row(
      children: [
        Expanded(
            child: FractionallySizedBox(
          heightFactor: 0.5,
          child: FlutterLogo(),
        )),
        20.horizontalSpace,
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [_inputFields(), 20.verticalSpace, _buttonWidget()],
        ).withSymetricPadding(horizontalPadding: 20.w))
      ],
    );
  }

  _inputFields() {
    return Column(
      children: [
        FadeInLeft(
          from: 100,
          child: SlideInLeft(
            from: 90,
            child: CustomTextFieldWidget(
                iconData: Icons.email,
                textEditingController: TextEditingController(),
                onChanged: (val) {},
                hintText: "Enter your email",
                labelText: "Email"),
          ),
        ),
        20.verticalSpace,
        FadeInLeft(
          from: 100,
          child: SlideInLeft(
            from: 90,
            child: CustomTextFieldWidget(
                iconData: Icons.lock,
                textEditingController: TextEditingController(),
                onChanged: (val) {},
                hintText: "Enter your password",
                labelText: "Email"),
          ),
        ),
      ],
    );
  }

  Widget _buttonWidget() {
    return ElevatedButton(onPressed: () {}, child: const Text("Login"));
  }

  _customButonWidget() {
    return Container(
        alignment: Alignment.center,
        height: 0.1.sh,
        width: 0.8.sw,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            gradient: LinearGradient(colors: [Colors.blue, Colors.blueAccent])),
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 16.sp),
        ));
  }
}
