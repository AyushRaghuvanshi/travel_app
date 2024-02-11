import 'package:flutter/material.dart';
import 'package:travel/features/home/models/checklist.dart';
import 'package:travel/features/home/screens/update_checklist.dart/update.dart';

class ChecklistCard extends StatelessWidget {
  final Checklist checklist;
  const ChecklistCard({super.key, required this.checklist});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => UpdateChecklist(checklist: checklist),
            ),
          );
        },
        child: Container(
          height: 48,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(checklist.name ?? "Name"),
            ],
          ),
        ),
      ),
    );
  }
}
