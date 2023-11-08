/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import dao.SubjectDAO;
import java.util.ArrayList;
import model.Subject;

/**
 *
 * @author hello
 */
public class SubjectService {
    
    public SubjectDAO subjectDAO;

    public SubjectService() {
        subjectDAO = new SubjectDAO();
    }
    
    public ArrayList<Subject> getListSubject(){
        
        return subjectDAO.getListSubject();
        
    }
        
}
