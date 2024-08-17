import 'package:bloc/bloc.dart';
import 'student_model.dart';
import 'student_state.dart';

class StudentDataCubit extends Cubit<StudentState> {
  StudentDataCubit() : super(StudentState.initial());


  void addStudent(String uid, String name) {
    final newStudent = StudentModel(uid: uid, name: name);
      final updatedStudents = List<StudentModel>.from(state.students);
      updatedStudents.add(newStudent);
      emit(state.copyWith(students: updatedStudents));
    }

  // Get all students
  List<StudentModel> getStudents() {
    return state.students;
  }


}

