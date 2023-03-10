package app.controller;

import app.Repository.CourseRepository;
import app.models.Course;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

//@Controller
public class CourseController {
    private final CourseRepository courseRepository;

    public CourseController(CourseRepository courseRepository) {
        this.courseRepository = courseRepository;
    }

    @GetMapping("/courses")
    public String findAll(Model model) {
        model.addAttribute("alls", courseRepository.findAll());
        return "coursemainpage";
    }

    @PostMapping("/saveCourse")
    private String saveCompany(@RequestParam("courseName") String courseName, @RequestParam("duration") String duration) {
        Course course = new Course();
        course.setCourseName(courseName);
        course.setDuration(duration);
        courseRepository.save(course);
        return "redirect:/courses";
    }

    @GetMapping("/courseForm")
    public String saveCoursePage() {
        return "course-save";
    }


    @GetMapping("/deleteCourse/{id}")
    public String deleteById(@PathVariable int id) {
        Course course = courseRepository.findById(id);
        courseRepository.delete(course.getId());
        return "redirect:/";
    }

    @GetMapping("/get/course/by/{id}")
    public String getById(Model model, @PathVariable int id) {
        Course course = courseRepository.findById(id);
        model.addAttribute("course", course);
        return "find-course";
    }

    @GetMapping("/update/course/{id}")
    public String updateCourseForm(@PathVariable("id") int id, Model model) {
        Course course = courseRepository.findById(id);
        model.addAttribute("course", course);
        return "update-course-form";
    }

    @PostMapping("/real/update/course/{id}")
    public String updateCourse(@RequestParam("courseName") String courseName, @RequestParam("duration") String duration, @PathVariable int id) {
        Course course = courseRepository.findById(id);
        course.setCourseName(courseName);
        course.setDuration(duration);
        courseRepository.updateCourse(id, course);
        return "redirect:/courses";
    }

    @GetMapping("/clear/course")
    public String clear() {
        courseRepository.clear();
        return "redirect:/";
    }
}
//    @GetMapping("/")
//    public String findAll(Model model) {
//        model.addAttribute("all", courseRepository.findAll());
//        return "companymainpage";
//    }
//
//    @PostMapping("/saveCourse")
//    private String saveCompany(@RequestParam("courseName") String courseName, @RequestParam("duration") String duration) {
//        Course course = new Course();
//        course.setCourseName(courseName);
//        course.setDuration(duration);
//        courseRepository.save(course);
//        return "redirect:/";
//    }
//
//    @GetMapping("/courseForm")
//    public String saveCoursePage() {
//        return "course-save";
//    }
//
//
//    @GetMapping("/deleteCourse/{id}")
//    public String deleteById(@PathVariable int id) {
//        Course course = courseRepository.findById(id);
//        courseRepository.delete(course.getId());
//        return "redirect:/";
//    }
//
//    @GetMapping("/get/by/{id}")
//    public String getById(Model model, @PathVariable int id) {
//        Course course = courseRepository.findById(id);
//        model.addAttribute("person", course);
//        return "find";
//    }
//
//    @GetMapping("/update/{id}")
//    public String updateCourseForm(@PathVariable("id") int id, Model model) {
//        Course course = courseRepository.findById(id);
//        model.addAttribute("person", course);
//        return "update-course-form";
//    }
//
//    @PostMapping("/real/update/{id}")
//    public String updateCourse(@RequestParam("courseName") String courseName, @RequestParam("duration") String duratiion, @PathVariable int id) {
//        Course course = new Course();
//        course.setCourseName(courseName);
//        course.setDuration(duratiion);
//        courseRepository.updateCourse(id, course);
//        return "redirect:/";
//    }
//
//    @GetMapping("/clear")
//    public String clear() {
//        courseRepository.clear();
//        return "redirect:/";
//    }
//}
