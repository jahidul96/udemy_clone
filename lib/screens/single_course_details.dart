import 'package:flutter/material.dart';
import 'package:udemy_clone/data/section_data.dart';
import 'package:udemy_clone/data/simple_data.dart';
import 'package:udemy_clone/screens/instructor_profile.dart';
import 'package:udemy_clone/utils/app_colors.dart';
import 'package:udemy_clone/utils/net_img.dart';
import 'package:udemy_clone/widgets/course_instructor_reuseable_items.dart';
import 'package:udemy_clone/widgets/curriculam_section_list.dart';
import 'package:udemy_clone/widgets/custom_button.dart';
import 'package:udemy_clone/widgets/single_course_details_widgets.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

class SingleCourseDetails extends StatefulWidget {
  const SingleCourseDetails({super.key});

  @override
  State<SingleCourseDetails> createState() => _SingleCourseDetailsState();
}

class _SingleCourseDetailsState extends State<SingleCourseDetails> {
  List<int> items = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // top  cover img with video icon and details
              topCourseDetails(),
              const SizedBox(height: 20),

              // what you will learn contents
              TextComp(
                text: "What you'll learn",
                size: 20,
              ),
              const SizedBox(height: 10),
              ListView.builder(
                itemCount: infoList.length,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return info(
                    label: infoList[index],
                  );
                },
              ),
              InkWell(
                onTap: () {},
                child: TextComp(
                  text: "See More",
                  color: AppColors.blueColor,
                ),
              ),

              const SizedBox(height: 30),

              // curricullam contents
              TextComp(
                text: "Curriculam",
                size: 20,
              ),
              const SizedBox(height: 8),
              TextComp(
                text: "101 sections - 676 lectures - 64h 4m total length",
                size: 13,
                color: AppColors.greyColor,
                fontweight: FontWeight.normal,
              ),
              const SizedBox(height: 15),
              ListView.builder(
                itemCount: sectionData.length,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return CurriculamInfoSection(data: sectionData[index]);
                  // return sectionInfo(data: sectionData[index]);
                },
              ),
              CustomButton(
                width: double.infinity,
                onPressed: () {},
                text: "95 more sections",
                borderWidth: 2,
                height: 55,
              ),

              const SizedBox(height: 20),

              // this course includes section
              TextComp(
                text: "This course includes",
                size: 20,
              ),
              const SizedBox(height: 10),
              ListView.builder(
                itemCount: courseIncludes.length,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return info(
                    label: courseIncludes[index],
                  );
                },
              ),

              const SizedBox(height: 20),

              // requirment section
              TextComp(
                text: "Requirments",
                size: 20,
              ),
              const SizedBox(height: 10),
              ListView.builder(
                itemCount: requirmentList.length,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return info(
                    label: requirmentList[index],
                  );
                },
              ),

              const SizedBox(height: 20),

              // desciption section
              TextComp(
                text: "Description",
                size: 20,
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 350,
                child: TextComp(
                  text:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                  size: 16,
                  fontweight: FontWeight.normal,
                  color: AppColors.greyColor,
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: TextComp(
                  text: "See More",
                  color: AppColors.blueColor,
                ),
              ),

              const SizedBox(height: 20),

              // student also bought section
              TextComp(
                text: "Student also bought",
                size: 19,
              ),
              const SizedBox(height: 20),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return CourseDisplayItem(
                    noPaddaing: true,
                  );
                },
              ),
              const SizedBox(height: 10),
              CustomButton(
                width: double.infinity,
                onPressed: () {},
                text: "See all",
                borderWidth: 2,
                height: 55,
              ),

              // instructor section
              const SizedBox(height: 20),
              TextComp(
                text: "Instructor",
                size: 19,
              ),
              const SizedBox(height: 10),
              TextComp(
                text: "Angela Yu",
                size: 16,
              ),
              const SizedBox(height: 3),
              TextComp(
                text: "Developer and Teacher",
                size: 15,
                fontweight: FontWeight.normal,
                color: AppColors.greyColor,
              ),
              const SizedBox(height: 10),
              profile(),
              const SizedBox(height: 10),
              SizedBox(
                width: 350,
                child: TextComp(
                  text:
                      "I am a developer simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                  size: 16,
                  fontweight: FontWeight.normal,
                  color: AppColors.greyColor,
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: TextComp(
                  text: "See More",
                  color: AppColors.blueColor,
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                width: double.infinity,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const InstrutorProfileScreen(),
                  ));
                },
                text: "See Profile",
                borderWidth: 2,
                height: 55,
              ),

              // student feedback
              const SizedBox(height: 20),
              TextComp(
                text: "Student Feedback",
                size: 19,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  TextComp(
                    text: "4.7",
                    size: 25,
                  ),
                  const SizedBox(width: 10),
                  TextComp(
                    text: "course rating",
                    size: 17,
                    color: AppColors.greyColor,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // ratings chart
              ratingsChart(),

              const SizedBox(height: 20),

              // student review
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return review();
                },
              ),
              const SizedBox(height: 20),
              CustomButton(
                width: double.infinity,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const InstrutorProfileScreen(),
                  ));
                },
                text: "See All Review",
                borderWidth: 2,
                height: 55,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget profile() => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.network(
              profileImg,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextComp(
                text: "4.7 instructor rating",
                color: AppColors.greyColor,
                fontweight: FontWeight.w500,
                size: 17,
              ),
              const SizedBox(height: 4),
              TextComp(
                text: "3,4567 Reviews",
                color: AppColors.greyColor,
                fontweight: FontWeight.w500,
                size: 15,
              ),
              const SizedBox(height: 2),
              TextComp(
                text: "1,349566 Students",
                color: AppColors.greyColor,
                fontweight: FontWeight.w500,
                size: 15,
              ),
              const SizedBox(height: 2),
              TextComp(
                text: "8 Courses",
                color: AppColors.greyColor,
                fontweight: FontWeight.w500,
                size: 15,
              ),
            ],
          ),
        ],
      );
}
