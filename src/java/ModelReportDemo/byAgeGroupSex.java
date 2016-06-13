/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelReportDemo;

/**
 *
 * @author shermainesy
 */
public class byAgeGroupSex {
  private int year;
  private String AgeGroup;
  private int bothSex;
  private String location;
  private int femaleCount;
  private int maleCount;

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
    public String getLocation() {
        return location;
    }

    /**
     * @param barangay the barangay to set
     */
    public void setLocation(String location) {
        this.location = location;
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
     * @return the bothSex
     */
    public int getBothSex() {
        return bothSex;
    }

    /**
     * @param bothSex the bothSex to set
     */
    public void setBothSex(int bothSex) {
        this.bothSex = bothSex;
    }
}
