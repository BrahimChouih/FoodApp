import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/components/custom_app_bar.dart';
import 'package:foodapp/components/custom_button.dart';
import 'package:get/get.dart';

class HistoryTap extends StatelessWidget {
  const HistoryTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            CustomAppBar(title: 'History'),
            const Spacer(),
            FaIcon(
              FontAwesomeIcons.history,
              color: Colors.grey.withOpacity(0.2),
              size: MediaQuery.of(context).size.width * 0.4,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Text(
              'No history yet',
              style: Get.theme.textTheme.bodyText1?.copyWith(
                fontSize: 21,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Text(
              'Hit the orange button down\nbelow to Create an order',
              style: Get.theme.textTheme.bodyText1?.copyWith(
                color: Colors.grey,
              ),
            ),
            const Spacer(),
            CustomButton(
              text: 'Start odering',
              onPressed: () {},
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ],
        ),
      ),
    );
  }
}
