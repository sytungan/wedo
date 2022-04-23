import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:wedo/constants/colors.dart';
import 'package:wedo/views/pages/create_task/bloc/create_task_bloc.dart';
import 'package:wedo/views/widgets/components/components.dart';

class CreateTaskPage extends StatelessWidget {
  const CreateTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descController = TextEditingController();
    DateTime selectedDate = DateTime.now();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  controller: titleController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Title',
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                ),
                child: AppButton(
                  child: Icon(
                    Icons.date_range_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print(titleController.text);
                    print(descController.text);
                  },
                ),
              ),
              const SizedBox(width: 24),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "1",
                    style: TextStyle(color: AppColors.davyGrey),
                  ),
                  Text(
                    "Date",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              const Text(
                "Add Description",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 197,
                child: TextField(
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.spanishGray,
                    height: 1.5,
                  ),
                  textAlignVertical: TextAlignVertical.top,
                  expands: true,
                  maxLines: null,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(12),
                    hintText: 'Type here...',
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: AppColors.silverSand,
                      height: 1.5,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  controller: descController,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: AppButton(
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 36),
                  decoration: BoxDecoration(color: AppColors.deepKoamaru, borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Create Now",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
                  onPressed: (){},
            ),
          )
        ],
      ),
    );
  }
}
