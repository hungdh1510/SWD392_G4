
package test;

import dao.IssueDAO;
import java.time.LocalDateTime;
import model.Issue;

/**
 *
 * @author trung
 */
public class test {
    
    public static void main(String[] args) {
        // Retrieve the form data from the request
  int projectID = 1;
  String issueType = "Bug";
  String issueStatus = "Open";
  String issueDescription = "I dont know";
  int createdBy = 1;
  // Create a new Issue object with the form data
    Issue issue = new Issue();
    issue.setProjectId(projectID);
    issue.setIssueType(issueType);
    issue.setIssueStatus(issueStatus);
    issue.setIssueDescription(issueDescription);
    issue.setCreatedBy(createdBy);
    issue.setCreatedDate(LocalDateTime.now());
    issue.setUpdatedBy(createdBy);
    issue.setUpdatedDate(LocalDateTime.now());

  // Save the issue to the database using the DAO
  IssueDAO issueDAO = new IssueDAO(); // Instantiate your IssueDAO class
  boolean success = issueDAO.addIssue(issue);

  if (success) {
    // Redirect the user to a success page or display a success message
      System.out.println("Succes");
  } else {
    // Redirect the user to an error page or display an error message
      System.out.println("Error");
  }
    }
}
