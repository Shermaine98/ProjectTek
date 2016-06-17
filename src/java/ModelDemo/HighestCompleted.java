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
public class HighestCompleted {
     private int year;
  private String ageGroup;
  private String highestCompleted;
  private int femaleCount;
  private int maleCount;
  private boolean approved;

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
     * @return the AgeGroup
     */
    public String getAgeGroup() {
        return ageGroup;
    }

    /**
     * @param AgeGroup the AgeGroup to set
     */
    public void setAgeGroup(String ageGroup) {
        this.ageGroup = ageGroup;
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

    /**
     * @return the highestCompleted
     */
    public String getHighestCompleted() {
        return highestCompleted;
    }

    /**
     * @param highestCompleted the highestCompleted to set
     */
    public void setHighestCompleted(String highestCompleted) {
        this.highestCompleted = highestCompleted;
    }
}
