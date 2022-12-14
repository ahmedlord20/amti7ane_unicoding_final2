
import 'package:amti7ane_unicoding/controllers/DropdownButtonController.dart';
import 'package:amti7ane_unicoding/controllers/subjects_controllers.dart';
import 'package:amti7ane_unicoding/models/colors.dart';
import 'package:amti7ane_unicoding/models/mytext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SubjectsControllers subController = Get.put(SubjectsControllers());
    DropdownButtonController dropController =
    Get.put(DropdownButtonController());

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          //! drop down list
          Padding(
            padding: const EdgeInsets.only(bottom: 38, top: 30, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: MyColor.mainColor,
                  ),
                  height: 35,
                  width: 150,
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                  ),
                  child: DropdownButtonHideUnderline(
                    child: GetX<DropdownButtonController>(
                        builder: (dropController) {
                      return DropdownButton<String>(
                        icon: Expanded(
                          child: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        dropdownColor: MyColor.mainColor,
                        value: dropController.selectedItem2.value,
                        borderRadius: BorderRadius.circular(10),
                        items: dropController.stageList
                            .map(
                              (item) => DropdownMenuItem(
                                value: item,
                                child: MyText(
                                  family: 'SFMarwa',
                                  myText: item,
                                  mysize: 20,
                                  mycolor: Colors.white,
                                ),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          dropController.selectedItem2.value = value!;
                        },
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
          //!cards
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  child: Center(
                    child: SizedBox(
                      width: 700,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 37,
                        runSpacing: 37,
                        children: subController.subjects,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
