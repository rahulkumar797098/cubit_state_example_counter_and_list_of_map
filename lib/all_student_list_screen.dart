import 'package:cubit_state_app/student_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllStudentListScreen extends StatefulWidget {
  const AllStudentListScreen({super.key});

  @override
  State<AllStudentListScreen> createState() => _AllStudentListScreenState();
}

class _AllStudentListScreenState extends State<AllStudentListScreen> {
  @override
  Widget build(BuildContext context) {
    // Get the list of students from the Cubit
    final students = context.watch<StudentDataCubit>().getStudents();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Student List"),
      ),
      body: ListView.builder(
        itemCount: students.length, // Set itemCount to the length of the student list
        itemBuilder: (context, index) {
          final student = students[index]; // Get the student at the current index
          return ListTile(
            title: Text("${student.name}"), // Display the student's name
            subtitle: Text("${student.uid}"), // Optionally, you can display the UID
          );
        },
      ),
    );
  }
}
