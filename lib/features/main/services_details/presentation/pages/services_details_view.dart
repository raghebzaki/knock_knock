import 'package:flutter/material.dart';

import 'package:knockknock/core/shared/widgets/custom_app_bar.dart';

class ServicesDetailsView extends StatelessWidget {
  const ServicesDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: CustomAppBar(),
      body:Center(
        child: Text("Services details"),
      ),
    );
  }
}
