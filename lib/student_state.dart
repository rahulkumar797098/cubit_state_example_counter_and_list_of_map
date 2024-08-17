import 'package:cubit_state_app/student_model.dart';

class StudentState {
  final List<StudentModel> students;

  StudentState({required this.students});

  // Initialize with an empty list
  factory StudentState.initial() {
    return StudentState(students: []);
  }

  // Copy with method to update state
  StudentState copyWith({List<StudentModel>? students}) {
    return StudentState(students: students ?? this.students);
  }
}
