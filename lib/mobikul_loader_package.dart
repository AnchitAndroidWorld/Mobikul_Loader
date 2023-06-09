library mobikul_loader_package;

import 'package:flutter/material.dart';

/// A loader with message.
class MobikulLoader extends StatelessWidget {
  final String? loadingMessage;
  final Color? loaderColor;
  final double? loaderSize;

  const MobikulLoader({Key? key, this.loadingMessage, this.loaderColor, this.loaderSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            loadingMessage ?? '',
            textAlign: TextAlign.center,
            style:  TextStyle(
              fontSize: loaderSize,
              color: loaderColor,
            ),
          ),
          const SizedBox(height: 24),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color?>(
              Theme.of(context).iconTheme.color,
            ),
          ),
        ],
      ),
    );
  }
}
