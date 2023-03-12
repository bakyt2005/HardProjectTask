package app.controller;

import app.Repository.StudentRepository;
import app.models.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class StudentController {
    private final StudentRepository studentRepository;

    public StudentController(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    @GetMapping("/studentses")
    public String findAll(Model model) {
        model.addAttribute("allsss", studentRepository.findAll());
        return "studentmainpage";
    }

    @PostMapping("/saveStudent")
    private String saveStudent(@RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName, @RequestParam("email") String email) {
        Student student = new Student();
        student.setFirstName(firstName);
        student.setLastName(lastName);
        student.setEmail(email);
        studentRepository.save(student);
        return "redirect:/studentses";
    }

    @GetMapping("/studentForm")
    public String saveStudentPage() {
        return "student-save";
    }


    @GetMapping("/deleteStudent/{id}")
    public String deleteById(@PathVariable int id) {
        Student student = studentRepository.findById(id);
        studentRepository.delete(student.getId());
        return "redirect:/studentses";
    }

    @GetMapping("/get/by/student/{id}")
    public String getById(Model model, @PathVariable int id) {
        Student student = studentRepository.findById(id);
        model.addAttribute("student", student);
        return "find";
    }

    @GetMapping("/update/student{id}")
    public String updateCourseForm(@PathVariable("id") int id, Model model) {
        Student student = studentRepository.findById(id);
        model.addAttribute("student", student);
        return "update-student-form";
    }

    @PostMapping("/real/update/student/{id}")
    public String updateStudent(@RequestParam("firstName") String firstName,
                                @RequestParam("lastName") String lastName, @RequestParam("email") String email, @PathVariable int id) {
        Student student = new Student();
        student.setFirstName(firstName);
        student.setLastName(lastName);
        student.setEmail(email);
        studentRepository.updateStudent(id, student);
        return "redirect:/studentses";
    }

    @GetMapping("/clear/student")
    public String clear() {
        studentRepository.clear();
        return "redirect:/studentses";
    }
}
