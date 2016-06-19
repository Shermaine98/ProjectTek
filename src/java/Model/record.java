/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Shermaine
 */
public class record {
    
    private String formName;
    private int censusYear;
    private boolean validation;
    private boolean approved;

    /**
     * @return the formName
     */
    public String getFormName() {
        return formName;
    }

    /**
     * @param formName the formName to set
     */
    public void setFormName(String formName) {
        this.formName = formName;
    }

    /**
     * @return the censusYear
     */
    public int getCensusYear() {
        return censusYear;
    }

    /**
     * @param censusYear the censusYear to set
     */
    public void setCensusYear(int censusYear) {
        this.censusYear = censusYear;
    }

    /**
     * @return the validation
     */
    public boolean isValidation() {
        return validation;
    }

    /**
     * @param validation the validation to set
     */
    public void setValidation(boolean validation) {
        this.validation = validation;
    }

    /**
     * @return the approved
     */
    public boolean isApproved() {
        return approved;
    }

    /**
     * @param approved the approved to set
     */
    public void setApproved(boolean approved) {
        this.approved = approved;
    }
    
    
}
