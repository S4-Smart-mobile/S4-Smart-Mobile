import 'package:flutter/material.dart';
import 'package:s4_cultural_exchange/widgets/navigation_footer.dart';

class CoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course overview'),
      ),
      body: Center(
        child: Text('Welcome to the course overview page!'),
      ),
      bottomNavigationBar: const NavigationFooter(
        widgetType: WidgetType.courses,
      ),
    );
  }
}
