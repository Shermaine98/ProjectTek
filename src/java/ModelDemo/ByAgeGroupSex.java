/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelDemo;

/**
 *
 * @author shermainesy
 */
public class ByAgeGroupSex {
    private int formID;
  private int year;
  private String AgeGroup;
  private String barangay;
  private int femaleCount;
  private int maleCount;
  private int bothSex;
  private boolean validation;

    public int getBothSex() {
        return bothSex;
    }

    public void setBothSex(int bothSex) {
        this.bothSex = bothSex;
    }

    /**
     * @return the year
     */
    public int getYear() {
        return year;
    }

    /**
     * @param year the year to set
     */
    public void setYear(int year) {
        this.year = year;
    }

    /**
     * @return the barangay
     */
    public String getBarangay() {
        return barangay;
    }

    /**
     * @param barangay the barangay to set
     */
    public void setBarangay(String barangay) {
        this.barangay = barangay;
    }

    /**
     * @return the femaleCount
     */
    public int getFemaleCount() {
        return femaleCount;
    }

    /**
     * @param femaleCount the femaleCount to set
     */
    public void setFemaleCount(int femaleCount) {
        this.femaleCount = femaleCount;
    }

    /**
     * @return the maleCount
     */
    public int getMaleCount() {
        return maleCount;
    }

    /**
     * @param maleCount the maleCount to set
     */
    public void setMaleCount(int maleCount) {
        this.maleCount = maleCount;
    }

    /**
     * @return the AgeGroup
     */
    public String getAgeGroup() {
        return AgeGroup;
    }

    /**
     * @param AgeGroup the AgeGroup to set
     */
    public void setAgeGroup(String AgeGroup) {
        this.AgeGroup = AgeGroup;
    }

    /**
     * @return the approved
     */
    public boolean isvalidated() {
        return validation;
    }

    /**
     * @param approved the approved to set
     */
    public void setValidation(boolean validation) {
        this.validation = validation;
    }

    /**
     * @return the formID
     */
    public int getFormID() {
        return formID;
    }

    /**
     * @param formID the formID to set
     */
    public void setFormID(int formID) {
        this.formID = formID;
    }
}
