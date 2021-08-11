package com.java.dao;

import com.java.domain.Student;

import java.util.List;

public interface StudentDao {
    List<Student> selectStudents();
    int insertStudent (Student student);
    int updateStudent (Student student);
    int deleteStudent (Integer sno);
}
