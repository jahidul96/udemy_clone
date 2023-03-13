import 'package:flutter/material.dart';
import 'package:udemy_clone/data/section_data.dart';
import 'package:udemy_clone/utils/app_colors.dart';
import 'package:udemy_clone/widgets/text_comp.dart';

class CurriculamInfoSection extends StatefulWidget {
  SectionModel data;
  CurriculamInfoSection({super.key, required this.data});

  @override
  State<CurriculamInfoSection> createState() => _CurriculamInfoSectionState();
}

class _CurriculamInfoSectionState extends State<CurriculamInfoSection> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextComp(
                  text: widget.data.title,
                  size: 16,
                  color: AppColors.greyColor,
                  fontweight: FontWeight.normal,
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.data.opend = !widget.data.opend;
                    isOpen = !isOpen;
                  });
                },
                child: Icon(
                  isOpen ? Icons.remove : Icons.add,
                  color: AppColors.blueColor,
                ),
              ),
            ],
          ),
          widget.data.opend
              ? ListView.builder(
                  itemCount: widget.data.lessons.length,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      minLeadingWidth: 20,
                      minVerticalPadding: 0,
                      leading: Text("${index + 1}"),
                      title: TextComp(
                        text: widget.data.lessons[index].lessonName,
                        size: 17,
                        fontweight: FontWeight.normal,
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(widget.data.lessons[index].duration),
                      ),
                      trailing: const Icon(
                        Icons.play_circle_filled,
                        color: AppColors.blueColor,
                      ),
                      contentPadding: const EdgeInsets.only(
                        left: 20,
                      ),
                    );
                  },
                )
              : Container(),
        ],
      ),
    );
  }
}
