import 'package:flutter/material.dart';
import 'package:s4_cultural_exchange/classes/courses.dart';
import 'package:s4_cultural_exchange/widgets/course-widget.dart';
import 'package:s4_cultural_exchange/widgets/custom-searchbar.dart';
import 'package:s4_cultural_exchange/widgets/not-unlocked-widget.dart';
import 'package:s4_cultural_exchange/widgets/navigation_footer.dart';

class CoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomSearchBar(),
          SizedBox(height: 12),
          CourseWidget(
            course: Courses(
              id: "1",
              name: "Common street signs 1",
              description: "description",
              category: Category(id: "1", name: "name"),
              progress: 0.7,
            ),
          ),
          SizedBox(height: 12),
          CourseWidget(
            course: Courses(
              id: "2",
              name: "Super-shopping",
              description: "description",
              category: Category(id: "1", name: "name"),
              progress: 0.1,
            ),
          ),
          SizedBox(height: 40),
          NotUnlockedWidget("Not unlocked yet!"),
          SizedBox(height: 12),
          CourseWidget(
            course: Courses(
              id: "3",
              name: "Common street signs 2",
              description: "description",
              category: Category(id: "1", name: "name"),
              progress: 0.0,
            ),
          ),
          SizedBox(height: 12),
          CourseWidget(
            course: Courses(
              id: "4",
              name: "Traffic aggression 101",
              description: "description",
              category: Category(id: "1", name: "name"),
              progress: 0.0,
            ),
          ),
          SizedBox(height: 40),
          NotUnlockedWidget("Finished"),
          SizedBox(height: 12),
          CourseWidget(
            course: Courses(
              id: "5",
              name: "Indroduction",
              description: "description",
              category: Category(id: "1", name: "name"),
              progress: 0.7,
            ),
          ),
          SizedBox(height: 12),
          CourseWidget(
            course: Courses(
              id: "6",
              name: "how do the courses work?",
              description: "description",
              category: Category(id: "1", name: "name"),
              progress: 0.1,
            ),
          ),
          CourseWidget(
            course: Courses(
              id: "7",
              name: "Don't scroll down!",
              description: "description",
              category: Category(id: "1", name: "name"),
              progress: 0.1,
            ),
          ),
        ],
      bottomNavigationBar: const NavigationFooter(
        widgetType: WidgetType.courses,
      ),
    );
  }
}
