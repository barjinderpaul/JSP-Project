package com.constants;

import java.util.Arrays;
import java.util.List;

public enum WHY_BORROW_WITH_FINZY {

    QUICK_EASY("Quick. Easy","https://res.cloudinary.com/finzy/image/upload/v1496667973/Group_29_y89deb.png","Online loan application process","Loans funded in as less as 48 hours","Finzy facilitates execution of loan agreement either digitally or at your doorstep"),
    FLEXIBILITY_AND_TRANSPARENCY ("Flexibility and Transparency","https://res.cloudinary.com/finzy/image/upload/v1496670142/ba_pshedr.png","No hidden charges","No lock-in","Visual dashboards to track your transactions"),
    SECURITY_AND_PRIVACY ("security and Privacy","https://res.cloudinary.com/finzy/image/upload/v1496667973/Group_28_mxygt4.png","Our personal information is never revealed to evaluating investors","Loans funded only by screened investors","Finzy assures your personal data is secure and not shared or misused","Finzy remains your contact point despite loans being funded by multiple investors"),
    CREDIT_ASSESSMENT ("Credit Assessment","https://res.cloudinary.com/finzy/image/upload/v1494580845/invest/Group_22.png","Our evaluation process goes beyond the traditional approach of banks. By assessing borrowers on multiple parameters and not limited to just credit score or only to employees of Selective Corporate, we are able to offer loans to a much larger borrower segment ");

    public String heading;
    public String imgUrl;
    public List<String> listItems;

    private WHY_BORROW_WITH_FINZY(String heading, String imgUrl, String... listItems) {
        this.heading = heading;
        this.imgUrl = imgUrl;
        this.listItems = Arrays.asList(listItems);
    }

    public List<String> getListItems() {
        return listItems;
    }
}