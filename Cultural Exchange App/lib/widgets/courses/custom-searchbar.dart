import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  CustomSearchBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 16.0), // Adjust the horizontal padding as needed
      child: TextField(
        style: TextStyle(color: Colors.white), // Set text color to white
        decoration: InputDecoration(
          hintText: 'Search courses...',
          hintStyle: TextStyle(
              fontSize: 20,
              color: Colors
                  .white70), // Set hint text color to a lighter shade of white
          prefixIcon: Icon(Icons.search,
              color: Color(0xFFFAB440)), // Set icon color to white
          filled: true,
          fillColor: Color(0xFF140CA7), // Set background color to #140CA7
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
                30.0), // Set border radius to make it pill-shaped
            borderSide: BorderSide.none, // Remove border line
          ),
        ),
      ),
    );
  }
}
