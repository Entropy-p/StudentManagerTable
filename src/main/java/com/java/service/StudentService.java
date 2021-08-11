package com.java.service;

import com.java.domain.Student;

import java.util.List;

public interface StudentService {
    List<Student> findStudent();
    int addStudent (Student student);
    int modifyStudent (Student student);
    int removeStudent (Integer sno);
}
