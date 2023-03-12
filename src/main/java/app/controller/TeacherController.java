package app.controller;

import app.models.Teacher;
import app.Repository.TeacherRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class TeacherController {
    private final TeacherRepository teacherRepository;

    public TeacherController(TeacherRepository teacherRepository) {
        this.teacherRepository = teacherRepository;
    }

    @GetMapping("/teachers")
    public String findAll(Model model) {
        model.addAttribute("bo", teacherRepository.findAll());
        return "teachermainpage";
    }

    @PostMapping("/saveTeacher")
    private String saveTeacher(@RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName, @RequestParam("email") String email) {
        Teacher teacher = new Teacher();
        teacher.setFirstName(firstName);
        teacher.setLastName(lastName);
        teacher.setEmail(email);
        teacherRepository.save(teacher);
        return "redirect:/teachers";
    }

    @GetMapping("/teacherForm")
    public String saveTeacherPage() {
        return "teacher-save";
    }


    @GetMapping("/deleteTeacher/{id}")
    public String deleteById(@PathVariable int id) {
        Teacher teacher = teacherRepository.findById(id);
        teacherRepository.delete(teacher.getId());
        return "redirect:/teachers";
    }

    @GetMapping("/get/by/teacher/{id}")
    public String getById(Model model, @PathVariable int id) {
        Teacher teacher = teacherRepository.findById(id);
        model.addAttribute("teacher", teacher);
        return "find";
    }

    @GetMapping("/update/teacher/{id}")
    public String updateTeacherForm(@PathVariable("id") int id, Model model) {
        Teacher teacher = teacherRepository.findById(id);
        model.addAttribute("teacher", teacher);
        return "update-teacher-form";
    }

    @PostMapping("/real/update/teacher/{id}")
    public String updateTeacher(@RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName,@RequestParam("email") String email, @PathVariable int id) {
        Teacher teacher = new Teacher();
        teacher.setFirstName(firstName);
        teacher.setLastName(lastName);
        teacher.setEmail(email);
        teacherRepository.updateTeacher(id, teacher);
        return "redirect:/teachers";
    }

    @GetMapping("/clear/teacher")
    public String clear() {
        teacherRepository.clear();
        return "redirect:/teachers";
    }
}
