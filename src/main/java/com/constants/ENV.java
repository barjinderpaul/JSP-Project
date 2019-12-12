package com.constants;

public enum ENV {

    DRIVER("javax.persistence.jdbc.driver","org.postgresql.Driver"),
    URL ("javax.persistence.jdbc.url","jdbc:postgresql://localhost/contact_us"),
    USER ("javax.persistence.jdbc.user", "postgres"),
    PASSWORD ("javax.persistence.jdbc.password", "123456");

    public String key;
    public String value;

    private ENV(String key, String value){
        this.key = key;
        this.value = value;
    }

}