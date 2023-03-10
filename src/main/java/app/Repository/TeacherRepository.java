package app.Repository;

import app.models.Teacher;

import java.util.List;

public interface TeacherRepository {
    List<Teacher> findAll();

    Teacher findById(int id);

    void save(Teacher teacher);

    void delete(int id);

    void updateTeacher(int id, Teacher teacher);

    void clear();
}
