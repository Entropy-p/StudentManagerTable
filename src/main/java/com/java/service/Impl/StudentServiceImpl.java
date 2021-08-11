package com.java.service.Impl;

import com.java.dao.StudentDao;
import com.java.domain.Student;
import com.java.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Resource
    private StudentDao studentDao;

    @Override
    public List<Student> findStudent() {
        return studentDao.selectStudents();
    }

    @Override
    public int addStudent(Student student) {
        int nums = studentDao.insertStudent(student);
        return nums;
    }

    @Override
    public int modifyStudent(Student student) {
        int nums = studentDao.updateStudent(student);
        return nums;
    }

    @Override
    public int removeStudent(Integer sno) {
        int nums = studentDao.deleteStudent(sno);
        return nums;
    }
}
