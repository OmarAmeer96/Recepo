import 'package:flutter/material.dart';
import 'package:recepo/Core/theming/styles.dart';

class DeleteProductConfirmationButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color color;
  final Color textColor;
  final Color borderSideColor;
  final double width;
  final double textSize;
  final double height;

  const DeleteProductConfirmationButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    this.textColor = Colors.white,
    this.borderSideColor = Colors.transparent,
    this.width = double.infinity,
    this.textSize = 18,
    this.height = 49,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19),
          side: BorderSide(color: borderSideColor),
        ),
      ),
      child: Container(
        // width: 367,
        width: 110,
        height: 36,
        alignment: Alignment.center,
        child: Text(
          text,
          style: Styles.enabledTextFieldsLabelText.copyWith(
            color: textColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
