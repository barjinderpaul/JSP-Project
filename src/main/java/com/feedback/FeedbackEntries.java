package com.feedback;

import javax.persistence.*;

@Entity(name = "contact_us_entries")
@Table(name = "contact_us_entries")
public class FeedbackEntries {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false, nullable = false)
    private Long id;

    private String name;

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
