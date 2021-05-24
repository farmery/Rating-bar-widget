import 'package:flutter/material.dart';

class RatingBar extends StatefulWidget {
  RatingBar(
      {this.starColor = Colors.yellow,
        this.starSize = 18,
        @required this.isReadOnly,
        @required this.ratingValue,
        this.onChange});

  /// Color of star icons
  final Color starColor;

  /// Size of the star icon
  final double starSize;

  /// if Rating bar should be view only or editable
  final bool isReadOnly;

  /// Initial value of the rating bar when the isReadOnly property is set to false.
  /// Final value of the Rating bar when the isReadOnly property is set to true
  final double ratingValue;

  /// Returns the value of the rating bar when the value changes
  final ValueChanged<int> onChange;
  @override
  _RatingBarState createState() => _RatingBarState();
}

class _RatingBarState extends State<RatingBar> {
  double ratingValue = 0;
  @override
  Widget build(BuildContext context) {
    if (widget.ratingValue == null || widget.isReadOnly)
      ratingValue = widget.ratingValue;
    return Container(
      color: Colors.transparent,
      child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(5, (index) {
            Icon starWidget;
            if (ratingValue == 0) {
              starWidget = Icon(
                Icons.star_border,
                color: widget.starColor,
              );
            } else if (ratingValue > 0 && ratingValue < 1) {
              starWidget = Icon(
                index == 0 ? Icons.star_half : Icons.star_outline,
                color: widget.starColor,
              );
            } else if (ratingValue == 1) {
              starWidget = Icon(index < 1 ? Icons.star : Icons.star_outline,
                  color: widget.starColor);
            } else if (ratingValue > 1 && ratingValue < 2) {
              starWidget = Icon(
                  index == 1
                      ? Icons.star_half
                      : index == 0
                      ? Icons.star
                      : Icons.star_outline,
                  color: widget.starColor);
            } else if (ratingValue == 2) {
              starWidget = Icon(index < 2 ? Icons.star : Icons.star_outline,
                  color: widget.starColor);
            } else if (ratingValue > 2 && ratingValue < 3) {
              starWidget = Icon(
                  index == 2
                      ? Icons.star_half
                      : index <= 1
                      ? Icons.star
                      : Icons.star_outline,
                  color: widget.starColor);
            } else if (ratingValue == 3) {
              starWidget = Icon(index < 3 ? Icons.star : Icons.star_outline,
                  color: widget.starColor);
            } else if (ratingValue > 3 && ratingValue < 4) {
              starWidget = Icon(index == 3
                  ? Icons.star_half
                  : index <= 2
                  ? Icons.star
                  : Icons.star_outline);
            } else if (ratingValue == 4) {
              starWidget = Icon(index < 4 ? Icons.star : Icons.star_outline,
                  color: widget.starColor);
            } else if (ratingValue > 4 && ratingValue < 5) {
              starWidget = Icon(
                index == 4
                    ? Icons.star_half
                    : index <= 3
                    ? Icons.star
                    : Icons.star_outline,
                color: widget.starColor,
              );
            } else if (ratingValue == 4) {
              starWidget = Icon(index < 4 ? Icons.star : Icons.star_outline,
                  color: widget.starColor);
            } else if (ratingValue > 4 && ratingValue < 5) {
              starWidget = Icon(index == 5
                  ? Icons.star_half
                  : index <= 4
                  ? Icons.star
                  : Icons.star_outline);
            } else if (ratingValue == 5) {
              starWidget = Icon(index < 5 ? Icons.star : Icons.star_outline,
                  color: widget.starColor);
            }
            return widget.isReadOnly
                ? SizedBox(
              child: starWidget,
            )
                : GestureDetector(
                onTap: () {
                  setState(() {
                    ratingValue = index.toDouble() + 1;
                    if (widget.onChange != null) widget.onChange(index + 1);
                  });
                },
                child: starWidget);
          })),
    );
  }
}
