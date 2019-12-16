package com.feedback;

import com.entities.FeedbackEntries;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

//@WebServlet(value = "/generateCSV")
public class DownloadCsvServlet extends HttpServlet {
    public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException {

        response.setContentType("text/csv");
        String csvFileName =  "Feedback_Entries_" + System.currentTimeMillis()+".csv";
        response.setHeader("Content-disposition", "attachment; " + "filename=" + csvFileName);
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("contactUsPersistanceUnit");
        EntityManager entityManager = entityManagerFactory.createEntityManager();

        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<FeedbackEntries> query = criteriaBuilder.createQuery(FeedbackEntries.class);
        Root<FeedbackEntries> root = query.from(FeedbackEntries.class);

        query.select(root);

        List<FeedbackEntries> tableData =  entityManager.createQuery(query).getResultList();

        String headerData = "Id,Name,Mobile Number,Email,Message" + "\n";
        List<String> csvData = new ArrayList<>();
        csvData.add(headerData);

        tableData.forEach(feedbackEntry->{
            String feedbackMessage = feedbackEntry.getMessage();
            feedbackMessage = feedbackMessage.replaceAll("\n","");
            String stringEntry = "" + feedbackEntry.getId() + "," + feedbackEntry.getName() + "," + feedbackEntry.getMobileNumber() + "," + feedbackEntry.getEmailId() + "," + feedbackMessage+ "\n";
            csvData.add(stringEntry);
        });

        Iterator<String> iter = csvData.iterator();
        while (iter.hasNext()){
            String outputString = (String) iter.next();
            response.getOutputStream().print(outputString);
        }
        response.getOutputStream().flush();

    }
}
