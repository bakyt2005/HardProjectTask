package app.Repository;


import app.models.Student;

import java.util.List;

public interface StudentRepository {
    List<Student> findAll();

    Student findById(int id);

    void save(Student student);

    void delete(int id);

    void updateStudent(int id, Student student);

    void clear();
}
