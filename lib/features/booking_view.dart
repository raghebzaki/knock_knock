import 'package:flutter/material.dart';
import 'package:knockknock/core/shared/widgets/custom_button_small.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../core/router/router.dart';
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
            title:  Text(S.of(context).whatOrdersDoYouWant),
            content: Row(
              children: [
                Expanded(
                  child: CustomBtnSmall(
                    label: S.current.products,
                    onPressed: () {
                      Navigator.pop(context);
                      context.pushNamed(myOrdersPageRoute);
                    },
                  ),
                ),
                Expanded(
                  child: CustomBtnSmall(
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
