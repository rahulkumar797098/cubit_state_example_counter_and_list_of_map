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
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return Card(
            elevation: 5 ,
            shadowColor: Colors.orange,
            child: ListTile(
              title: Text(student.name , style: const TextStyle(fontSize: 25 , color: Colors.orange , fontWeight: FontWeight.bold),), // Display the student's name
              subtitle: Text(student.uid , style: const TextStyle(fontSize: 23 , color: Colors.black),), // Optionally, you can display the UID
            ),
          );
        },
      ),
    );
  }
}
