import 'package:flutter/material.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../core/router/router.dart';
import '../core/shared/widgets/custom_button.dart';
import '../generated/l10n.dart';

class BookingView extends StatefulWidget {
  const BookingView({super.key});

  @override
  State<BookingView> createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await showDialog<String>(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(

            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: const Text("what orders do you want"),
            content: Row(
              children: [
                Expanded(
                  child: CustomBtn(
                    label: S.current.products,
                    onPressed: () {
                      Navigator.pop(context);
                      context.pushNamed(myOrdersPageRoute);
                    },
                  ),
                ),
                Expanded(
                  child: CustomBtn(
                    label: S.current.services,
                    onPressed: () {
                      Navigator.pop(context);
                      context.pushNamed(myServicesOrdersPageRoute);
                    },
                  ),
                ),
              ],
            ),
          );
        },
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(),
    );
  }
}
