import 'package:boqadding/widget/palette.dart';
import 'package:flutter/material.dart';

import 'dimen.dart';

class ErrorInfo extends StatelessWidget {
  final String message;
  final Function onTap;
  const ErrorInfo({Key? key, required this.message, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimen.grid_2),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              message,
            ),
            SizedBox(height: Dimen.grid_2),
            GestureDetector(
              onTap: () {
                onTap();
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
                decoration: BoxDecoration(
                  color: Palette.red,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Text(
                  'Retry',
                  style: Theme.of(context).textTheme.button!.copyWith(color: Palette.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
