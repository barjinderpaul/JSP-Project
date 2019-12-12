package com.entities;

import javax.persistence.*;

@Entity(name = "contact_us_entries")
@Table(name = "contact_us_entries")
//@NamedQuery(name="FeedbackEntries.findAll", query="SELECT entry FROM FeedbackEntries entry")
public class FeedbackEntries {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false, nullable = false)
    private Long id;

    public String name;

    @Column(name = "mobile_no")
    private String mobileNumber;

    @Column(name="email")
    private String emailId;

    private String message;

    @Override
    public String toString() {
        return "FeedbackEntries{" +

                ", name='" + name + '\'' +
                ", mobileNumber='" + mobileNumber + '\'' +
                ", emailId='" + emailId + '\'' +
                ", message='" + message + '\'' +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }


}
