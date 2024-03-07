import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s4_cultural_exchange/classes/courses.dart';
import 'package:s4_cultural_exchange/widgets/courses/course-widget.dart';
import 'package:s4_cultural_exchange/widgets/courses/custom-searchbar.dart';
import 'package:s4_cultural_exchange/widgets/courses/not-unlocked-widget.dart';
import 'package:s4_cultural_exchange/widgets/navigation_footer.dart';

const horizontalPadding = 16.00;

class CoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        backgroundColor: theme.colorScheme.background,
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            'Courses',
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: theme.colorScheme.primary,
            )),
          ),
        ),
      ),
      body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(
                horizontalPadding, 16, horizontalPadding, 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSearchBar(),
                const SizedBox(height: 12),
                CourseWidget(
                  course: Courses(
                    id: "1",
                    name: "Common street signs 1",
                    description: "description",
                    category: Category(id: "1", name: "name"),
                    progress: 0.7,
                  ),
                ),
                const SizedBox(height: 12),
                CourseWidget(
                  course: Courses(
                    id: "2",
                    name: "Super-shopping",
                    description: "description",
                    category: Category(id: "1", name: "name"),
                    progress: 0.1,
                  ),
                ),
                const SizedBox(height: 40),
                NotUnlockedWidget("Not unlocked yet!"),
                const SizedBox(height: 12),
                CourseWidget(
                  course: Courses(
                    id: "3",
                    name: "Common street signs 2",
                    description: "description",
                    category: Category(id: "1", name: "name"),
                    progress: 0.0,
                  ),
                ),
                const SizedBox(height: 12),
                CourseWidget(
                  course: Courses(
                    id: "4",
                    name: "Traffic aggression 101",
                    description: "description",
                    category: Category(id: "1", name: "name"),
                    progress: 0.0,
                  ),
                ),
                const SizedBox(height: 40),
                NotUnlockedWidget("Finished"),
                const SizedBox(height: 12),
                CourseWidget(
                  course: Courses(
                    id: "5",
                    name: "Introduction",
                    description: "description",
                    category: Category(id: "1", name: "name"),
                    progress: 0.7,
                  ),
                ),
                const SizedBox(height: 12),
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
            ),
          )),
      bottomNavigationBar: const NavigationFooter(
        widgetType: WidgetType.courses,
      ),
    );
  }
}
