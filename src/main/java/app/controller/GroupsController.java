package app.controller;

import app.Repository.GroupsRepository;
import app.models.Groups;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

//@Controller
public class GroupsController {
    private final GroupsRepository groupsRepository;

    public GroupsController(GroupsRepository groupsRepository) {
        this.groupsRepository = groupsRepository;
    }

    @GetMapping("/w")
    public String findAll(Model model) {
        model.addAttribute("allss", groupsRepository.findAll());
        return "groupsmainpage";
    }

    @PostMapping("/saveGroups")
    private String saveGroups(@RequestParam("groupsName") String groupsName, @RequestParam("dateOfStart") String dateOfStart, @RequestParam("dateOfFinish") String dateOfFinish) {
        Groups groups = new Groups();
        groups.setGroupName(groupsName);
        groups.setDateOfStart(dateOfStart);
        groups.setDateOfFinish(dateOfFinish);
        groupsRepository.save(groups);
        return "redirect:/w";
    }

    @GetMapping("/groupsForm")
    public String saveGroupsPage() {
        return "groups-save";
    }


    @GetMapping("/deleteGroups/{id}")
    public String deleteById(@PathVariable int id) {
        Groups groups = groupsRepository.findById(id);
        groupsRepository.delete(groups.getId());
        return "redirect:/";
    }

    @GetMapping("/get/by/groups/{id}")
    public String getById(Model model, @PathVariable int id) {
        Groups groups = groupsRepository.findById(id);
        model.addAttribute("groups", groups);
        return "find-groups";
    }

    @GetMapping("/update/groups/{id}")
    public String updateCourseForm(@PathVariable("id") int id, Model model) {
        Groups groups = groupsRepository.findById(id);
        model.addAttribute("groups", groups);
        return "update-groups-form";
    }

    @PostMapping("/real/update/groups/{id}")
    public String updateGroups(@RequestParam("groupsName") String groupsName, @RequestParam("dateOfStart") String dateOfStart, @RequestParam("dateOfFinish") String dateOfFinish, @PathVariable int id) {
        Groups groups = groupsRepository.findById(id);
        groups.setGroupName(groupsName);
        groups.setDateOfStart(dateOfStart);
        groups.setDateOfFinish(dateOfFinish);
        groupsRepository.updateGroups(id, groups);
        return "redirect:/w";
    }

    @GetMapping("/clear/groups")
    public String clear() {
        groupsRepository.clear();
        return "redirect:/";
    }
}
//    @GetMapping("/")
//    public String findAll(Model model) {
//        model.addAttribute("all", groupsRepository.findAll());
//        return "find all";
//    }
//
//    @PostMapping("/saveGroups")
//    private String saveGroups(@RequestParam("groupName") String groupName, @RequestParam("dateOfStart") int dateOfStart, @RequestParam("dateOfFinish") int dateOfFinish) {
//        Groups groups = new Groups();
//        groups.setGroupName(groupName);
//        groups.setDateOfStart(dateOfStart);
//        groups.setDateOfFinish(dateOfFinish);
//        groupsRepository.save(groups);
//        return "redirect:/";
//    }
//
//    @GetMapping("/groupsForm")
//    public String saveCoursePage() {
//        return "groups-save";
//    }
//
//
//    @GetMapping("/deleteGroups/{id}")
//    public String deleteById(@PathVariable int id) {
//        Groups groups = groupsRepository.findById(id);
//        groupsRepository.delete(groups.getId());
//        return "redirect:/";
//    }
//
//    @GetMapping("/get/by/{id}")
//    public String getById(Model model, @PathVariable int id) {
//        Groups groups = groupsRepository.findById(id);
//        model.addAttribute("groups", groups);
//        return "find";
//    }
//
//    @GetMapping("/update/{id}")
//    public String updateCourseForm(@PathVariable("id") int id, Model model) {
//        Groups groups = groupsRepository.findById(id);
//        model.addAttribute("groups", groups);
//        return "update-groups-form";
//    }
//
//    @PostMapping("/real/update/{id}")
//    public String updateGroups(@RequestParam("groupsName") String groupsName, @RequestParam("dateOfStart") int dateOfStart, @RequestParam("dateOfFinish") int dateOfFinish, @PathVariable int id) {
//        Groups groups = new Groups();
//        groups.setGroupName(groupsName);
//        groups.setDateOfStart(dateOfStart);
//        groups.setDateOfFinish(dateOfFinish);
//        groupsRepository.updateGroups(id, groups);
//        return "redirect:/";
//    }
//
//    @GetMapping("/clear")
//    public String clear() {
//        groupsRepository.clear();
//        return "redirect:/";
//    }
//}
