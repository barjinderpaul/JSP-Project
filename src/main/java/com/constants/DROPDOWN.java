package com.constants;

public enum DROPDOWN{
    DebtConsolidation("Debt Consolidation"),
    HomeImprovement("Home Improvement"),
    Education("Education"),
    AppliancesAndElectronics("Appliances and Electronics"),
    Wedding ("Wedding"),
    EventOccasion ("Event Occasion"),
    TravelHoliday ("Travel Holiday"),
    MedicalExpenses ("Medical Expenses"),
    BusinessInvestment ("Business Investment"),
    VehiclePurchase ("Vehicle Purchase"),
    DownPayment ("Down Payment"),
    SecurityOrRentalDeposit ("Security or Rental Deposit"),
    Investment ("Investment"),
    Others ("Others");

    public String label;

    private DROPDOWN(String label) {
        this.label = label;
    }
}

