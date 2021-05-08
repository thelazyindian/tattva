import 'package:flutter/material.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.label,
    this.loading = false,
    this.onPressed,
  }) : super(key: key);

  final String label;
  final bool loading;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final btnSize = Size(
      width - (2 * homePaddingHorizontal),
      primaryBtnHeight,
    );

    return TextButton(
      onPressed: loading ? null : onPressed,
      style: primaryBtnStyle.copyWith(
        minimumSize: MaterialStateProperty.all(btnSize),
      ),
      child: loading
          ? const SizedBox(
              height: 24.0,
              width: 24.0,
              child: Center(
                  child: CircularProgressIndicator(
                strokeWidth: 2.5,
                valueColor: AlwaysStoppedAnimation(Colors.white),
              )),
            )
          : Text(label),
    );
  }
}
