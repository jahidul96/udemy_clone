class CourseModel {
  String coverImg;
  String title;
  String instructorName;
  String review;
  String totalReview;
  String courseFee;
  bool bestSeller;
  bool highRated;

  CourseModel(
      {required this.coverImg,
      required this.title,
      required this.instructorName,
      required this.review,
      required this.totalReview,
      required this.courseFee,
      required this.bestSeller,
      required this.highRated});
}
