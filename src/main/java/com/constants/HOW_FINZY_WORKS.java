package com.constants;

public enum HOW_FINZY_WORKS{

    DigitallyConnect("https://res.cloudinary.com/finzy/image/upload/v1496830327/Group_4_kendsi.png","Digitally Connect borrowers and investors","Digitally Connect image"),
    Documentation("https://res.cloudinary.com/finzy/image/upload/v1496830346/Group_3_tib7i9.png","Documentation & Disbursement of Loans","Documentation image"),
    Automated("https://res.cloudinary.com/finzy/image/upload/v1496830393/Group_2_v5rg2k.png","Automated monthly EMI collection & transfer","Automated image");

    public String url;
    public String content;
    public String alt;

    private HOW_FINZY_WORKS(String url, String content, String alt) {
        this.url = url;
        this.content = content;
        this.alt = alt;
    }
}

