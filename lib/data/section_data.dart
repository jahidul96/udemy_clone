class SectionModel {
  String title;
  bool opend;
  List<LessonModel> lessons;
  SectionModel(
      {required this.title, required this.opend, required this.lessons});
}

class LessonModel {
  String lessonName;
  String duration;
  LessonModel({required this.lessonName, required this.duration});
}

List<SectionModel> sectionData = [
  SectionModel(
    title: "Section 1 - Day 1 - Beginner - Working with Variables in Python",
    opend: false,
    lessons: [
      LessonModel(lessonName: "lession one", duration: "5:45s"),
      LessonModel(lessonName: "lession two", duration: "5:45s"),
      LessonModel(lessonName: "lession three", duration: "5:45s"),
      LessonModel(lessonName: "lession four", duration: "5:45s"),
      LessonModel(lessonName: "lession five", duration: "5:45s"),
      LessonModel(lessonName: "lession six", duration: "5:45s"),
      LessonModel(lessonName: "lession seven", duration: "5:45s"),
      LessonModel(lessonName: "lession eight", duration: "5:45s"),
      LessonModel(lessonName: "lession nine", duration: "5:45s"),
      LessonModel(lessonName: "lession ten", duration: "5:45s"),
    ],
  ),
  SectionModel(
    title: "Section 2 - Day 2 - Beginner - Working with Variables in Python",
    opend: false,
    lessons: [
      LessonModel(lessonName: "lession one", duration: "5:45s"),
      LessonModel(lessonName: "lession two", duration: "5:45s"),
      LessonModel(lessonName: "lession three", duration: "5:45s"),
      LessonModel(lessonName: "lession four", duration: "5:45s"),
      LessonModel(lessonName: "lession five", duration: "5:45s"),
      LessonModel(lessonName: "lession six", duration: "5:45s"),
      LessonModel(lessonName: "lession seven", duration: "5:45s"),
      LessonModel(lessonName: "lession eight", duration: "5:45s"),
      LessonModel(lessonName: "lession nine", duration: "5:45s"),
      LessonModel(lessonName: "lession ten", duration: "5:45s"),
    ],
  ),
  SectionModel(
    title: "Section 3 - Day 3 - Beginner - Working with Variables in Python",
    opend: false,
    lessons: [
      LessonModel(lessonName: "lession one", duration: "5:45s"),
      LessonModel(lessonName: "lession two", duration: "5:45s"),
      LessonModel(lessonName: "lession three", duration: "5:45s"),
      LessonModel(lessonName: "lession four", duration: "5:45s"),
      LessonModel(lessonName: "lession five", duration: "5:45s"),
      LessonModel(lessonName: "lession six", duration: "5:45s"),
      LessonModel(lessonName: "lession seven", duration: "5:45s"),
      LessonModel(lessonName: "lession eight", duration: "5:45s"),
      LessonModel(lessonName: "lession nine", duration: "5:45s"),
      LessonModel(lessonName: "lession ten", duration: "5:45s"),
    ],
  ),
  SectionModel(
    title: "Section 4 - Day 4 - Beginner - Working with Variables in Python",
    opend: false,
    lessons: [
      LessonModel(lessonName: "lession one", duration: "5:45s"),
      LessonModel(lessonName: "lession two", duration: "5:45s"),
      LessonModel(lessonName: "lession three", duration: "5:45s"),
      LessonModel(lessonName: "lession four", duration: "5:45s"),
      LessonModel(lessonName: "lession five", duration: "5:45s"),
      LessonModel(lessonName: "lession six", duration: "5:45s"),
      LessonModel(lessonName: "lession seven", duration: "5:45s"),
      LessonModel(lessonName: "lession eight", duration: "5:45s"),
      LessonModel(lessonName: "lession nine", duration: "5:45s"),
      LessonModel(lessonName: "lession ten", duration: "5:45s"),
    ],
  ),
  SectionModel(
    title: "Section 5 - Day 5 - Beginner - Working with Variables in Python",
    opend: false,
    lessons: [
      LessonModel(lessonName: "lession one", duration: "5:45s"),
      LessonModel(lessonName: "lession two", duration: "5:45s"),
      LessonModel(lessonName: "lession three", duration: "5:45s"),
      LessonModel(lessonName: "lession four", duration: "5:45s"),
      LessonModel(lessonName: "lession five", duration: "5:45s"),
      LessonModel(lessonName: "lession six", duration: "5:45s"),
      LessonModel(lessonName: "lession seven", duration: "5:45s"),
      LessonModel(lessonName: "lession eight", duration: "5:45s"),
      LessonModel(lessonName: "lession nine", duration: "5:45s"),
      LessonModel(lessonName: "lession ten", duration: "5:45s"),
    ],
  ),
];
