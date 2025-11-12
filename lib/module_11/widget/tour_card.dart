import 'package:flutter/material.dart';
class TourCard extends StatelessWidget {
  final String img, title;
  const TourCard({
    super.key,
    required this.img,
    required this.title

  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: NetworkImage(img))
          ),
        ),
        Positioned(
          bottom: 5,
          left: 10,
          child: Row(
            children: [
              Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}