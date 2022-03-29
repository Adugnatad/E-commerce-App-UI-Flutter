import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';

class searchScreen extends StatelessWidget {
  TextEditingController SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: SvgPicture.asset(
              "assets/icons/back.svg",
              // By default our  icon color is white
              color: kTextColor,
            ),
            onPressed: () => Navigator.pop(context)),
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: TextField(
            controller: SearchController,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    /* Clear the search field */
                    SearchController.clear();
                  },
                ),
                hintText: 'Search...',
                border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
