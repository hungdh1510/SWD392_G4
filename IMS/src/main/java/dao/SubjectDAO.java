/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Subject;

/**
 *
 * @author hello
 */
public class SubjectDAO extends DBContext {

    Connection cnn; //Kết nối
    PreparedStatement stm;//Thực hiện các câu lệnh SQL
    ResultSet rs; //Lưu trữ và xử lý dữ liệu

    public ArrayList<Subject> getListSubject() {
        ArrayList<Subject> subject = new ArrayList<>();
        cnn = null;
        stm = null;
        rs = null;

        try {
            // Establish a database connection (replace these details with your actual database connection)
            cnn = getConnection();

            // Create an SQL statement to retrieve all semesters
            String sql = "SELECT subject_id , subject_code , subject_name , description , gitlab_config FROM subject";
            stm = cnn.prepareStatement(sql);

            // Execute the SQL query
            rs = stm.executeQuery();

            // Process the results and populate the list of semesters
            while (rs.next()) {
                Subject s = new Subject();

//                s.setSubjectId(rs.getInt("subject_id"));
//                s.setSubjectCode(rs.getString("subject_code"));
//                s.setSubjectName(rs.getString("subject_name"));
//                s.setDescription(rs.getString("description"));
//                s.setGitlabConfig(rs.getString("gitlab_config"));
                s.subjectId = rs.getInt(1);
                s.subjectCode = rs.getString(2);
                s.subjectName = rs.getString(3);
                s.description = rs.getString(4);
                s.gitlabConfig = rs.getString(5);

                subject.add(s);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle exceptions appropriately
        } finally {
            // Close database resources in the reverse order of their creation
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stm != null) {
                    stm.close();
                }
                if (cnn != null) {
                    cnn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
                // Handle exceptions appropriately
            }
        }

        return subject;
    }

    public void addSubject(String scode, String sname, String sdescription, String sgitlab) {
        try {
            cnn = getConnection();
            String strInsert = "Insert Into subject(subject_code,subject_name,description,gitlab_config) values (?,?,?,?)";
            stm = cnn.prepareStatement(strInsert);
            
            stm.setString(2, scode);
            stm.setString(3, sname);
            stm.setString(4, sdescription);
            stm.setString(5, sgitlab);
            stm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("addSubject fail:" + e.getMessage());
        }
    }

    public static void main(String[] args) {
        SubjectDAO sub = new SubjectDAO();
        List subList = sub.getListSubject();
        System.out.println(subList);
    }

}
