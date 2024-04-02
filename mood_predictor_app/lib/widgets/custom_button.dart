import 'package:flutter/material.dart';
import 'package:mood_predictor_app/classes/custom_button_data.dart';

class CustomButton extends StatelessWidget {
  final CustomButtonData buttonData;

  CustomButton({required this.buttonData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => buttonData.destinationPage()),
        );
      },
      child: Column(children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
          ),
          child: Row(
            children: [
              Icon(
                buttonData.icon,
                color: Color(0xFF752EBB),
                size: buttonData.fontSize * 1.5,
              ),
              Spacer(),
              Text(
                buttonData.text,
                style: TextStyle(
                  color: Color(0xFF752EBB),
                  fontSize: buttonData.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward,
                color: Color(0xFF752EBB),
                size: buttonData.fontSize * 1.5,
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Color(0xFF752EBB), // Purple line color
        ),
      ]),
    );
  }
}
