import 'package:udemy_clone/models/course_model.dart';
import 'package:udemy_clone/utils/net_img.dart';

List<CourseModel> topcourseData = [
  CourseModel(
      coverImg:
          "https://images.unsplash.com/photo-1544006659-f0b21884ce1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFuJTIwbGFwdG9wfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
      title: "Product management 101",
      instructorName: "Todd Bizer",
      review: "4.5",
      totalReview: "1,304",
      courseFee: "3,400",
      bestSeller: true,
      highRated: false),
  CourseModel(
      coverImg:
          "https://i.pinimg.com/736x/10/5b/ec/105beccc09e559a4dc9189d6cf3ff8ab.jpg",
      title: "Product management 101",
      instructorName: "Rainda",
      review: "4.0",
      totalReview: "304",
      courseFee: "5,400",
      bestSeller: false,
      highRated: true),
  CourseModel(
      coverImg: bannerImg,
      title: "Product management 101",
      instructorName: "Daisi",
      review: "4.8",
      totalReview: "1204",
      courseFee: "8,400",
      bestSeller: true,
      highRated: false),
];
