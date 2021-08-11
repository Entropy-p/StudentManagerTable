package com.java.controller;

import com.java.domain.Student;
import com.java.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class StudentController {

    @Resource
    private StudentService studentService;

    //查询学生
    @ResponseBody
    @RequestMapping("/findStudent.do")
    public List<Student> findStudent() {

        List<Student> students = studentService.findStudent();
        return students;
    }

    //添加学生
    @RequestMapping("/addStudent.do")
    public ModelAndView addStudent(Student student) {
        ModelAndView mv = new ModelAndView();
        String tips = "添加失败";
        int nums = studentService.addStudent(student);
        if (nums > 0) {
            tips = "学生"+ student.getSname() + "添加成功";
        }
        mv.addObject("tips",tips);
        mv.setViewName("result");
        return mv;
    }

    //修改学生
    @RequestMapping("/modifyStudent.do")
    public ModelAndView modifyStudent(Student student){
        ModelAndView mv = new ModelAndView();
        String tips = "修改失败";
        int nums = studentService.modifyStudent(student);
        if (nums > 0) {
            tips = "学生"+ student.getSname() + "修改成功";
        }
        mv.addObject("tips",tips);
        mv.setViewName("result");
        return mv;
    }

    //删除学生
    @RequestMapping("/removeStudent.do")
    public ModelAndView removeStudent(String sno){
        ModelAndView mv = new ModelAndView();
        String tips = "删除失败";
        int nums = studentService.removeStudent(Integer.valueOf(sno));
        if (nums > 0) {
            tips = "学号为"+ sno + "的学生删除成功";
        }
        mv.addObject("tips",tips);
        mv.setViewName("result");
        return mv;
    }

}
