package com.constants;

public enum TEAM{

    AMIT_MORE ("https://res.cloudinary.com/finzy/image/upload/v1538986872/amit_ihskhe.jpg","Amit More","Founder & CEO","Amit brings vision, business strategy and core financial sector domain knowledge to Finzy. Amit is an expert in the Indian Banking & Financial Services industry with over 16 years of experience across ICICI Bank, Credit Suisse AG and Edelweiss.","Amit More image"),
    ABHINANDAN_SANGHAM ("https://res.cloudinary.com/finzy/image/upload/v1538986872/abhinandan_aukpdl.jpg","Abhinandan Sangam","Co-founder & CTO","Abhinandan is an expert in building capabilities across geographies. He oversees Tech and Product at finzy and has over 19 years of experience with organizations like ThoughtWorks, Sabre, MindTree, Siemens, Amadeus. ","Abhinandan Sangham image"),
    VISHWAS_DIXIT ("https://res.cloudinary.com/finzy/image/upload/v1538986872/vishwas_ztkchg.jpg","Vishwas Dixit","Co-founder & CMO","Vishwas is the face of Finzy. With 23 years of Sales, Marketing & Distribution experience in organizations like Toyota, TVS and Dunlop,he brings in expertise in market expansion projects and creating distribution networks. ","Vishwas Dixit image"),
    APOORV_GAWDE("https://res.cloudinary.com/finzy/image/upload/v1538986872/apoorv_mt9lo0.jpg","Apoorv Gawde","CIO & Head of Product","Apoorv has over 13 years of experience in envisioning and building digital products. He has worked across the globe to create and deliver products. With a passion for experience design, at finzy, he focuses on product strategy and service design. ","Apoorv Gawde image");

    public String imageUrl;
    public String name;
    public String designation;
    public String about;
    public String alt;

    private TEAM(String imageUrl, String name, String designation, String about, String alt) {
        this.imageUrl = imageUrl;
        this.name = name;
        this.designation = designation;
        this.about = about;
        this.alt = alt;
    }
}

