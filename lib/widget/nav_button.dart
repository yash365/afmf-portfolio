import 'package:flutter_web/material.dart';

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton({
    Key key,
    @required this.text,
    @required this.onPressed,
    this.color = Colors.black
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 21.0
      ),
      ),
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}