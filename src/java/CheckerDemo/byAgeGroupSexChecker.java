/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CheckerDemo;

import ModelDemo.ByAgeGroupSex;
import ModelDemoError.byAgeGroupError;
import java.util.ArrayList;

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class byAgeGroupSexChecker {

     private ArrayList<ByAgeGroupSex> arrayNoError;
     private ArrayList<byAgeGroupError> arrayError;
    /*
     *@ ArrErrorByAgeGroupSex temp stored data, all strings
     */ 
     
    public byAgeGroupSexChecker(ArrayList<byAgeGroupError> ArrErrorByAgeGroupSex) {

        ByAgeGroupSex ByAgeGroupSex;
        arrayNoError = new ArrayList<ByAgeGroupSex>();
        arrayError = new ArrayList<byAgeGroupError>();
        
        for (int i = 0; i < ArrErrorByAgeGroupSex.size(); i++) {
            // Check if null 
            if (ArrErrorByAgeGroupSex.get(i).getBarangay() == null
                    || ArrErrorByAgeGroupSex.get(i).getAgeGroup() == null
                    || ArrErrorByAgeGroupSex.get(i).getBothSex() == null
                    || ArrErrorByAgeGroupSex.get(i).getMaleCount() == null
                    || ArrErrorByAgeGroupSex.get(i).getFemaleCount() == null) {
                System.out.println("STRING");
                arrayError.add(ArrErrorByAgeGroupSex.get(i));
                //Check if string == string and 
                // @todo int == int
            } else if (isNumeric(ArrErrorByAgeGroupSex.get(i).getBothSex())
                    || isNumeric(ArrErrorByAgeGroupSex.get(i).getFemaleCount())
                    || isNumeric(ArrErrorByAgeGroupSex.get(i).getMaleCount())) {

                System.out.println("NUMBER");
                arrayError.add(ArrErrorByAgeGroupSex.get(i));
            } else if (Integer.parseInt(ArrErrorByAgeGroupSex.get(i).getBothSex())
                    != Integer.parseInt(ArrErrorByAgeGroupSex.get(i).getMaleCount())
                    + Integer.parseInt(ArrErrorByAgeGroupSex.get(i).getFemaleCount())) {
                System.out.println("TOTAL");
                arrayError.add(ArrErrorByAgeGroupSex.get(i));
            } else {
                ByAgeGroupSex = new ByAgeGroupSex();
                ByAgeGroupSex.setAgeGroup(ArrErrorByAgeGroupSex.get(i).getAgeGroup());
                ByAgeGroupSex.setBarangay(ArrErrorByAgeGroupSex.get(i).getBarangay());
                ByAgeGroupSex.setBothSex(Integer.parseInt(ArrErrorByAgeGroupSex.get(i).getBothSex()));
                ByAgeGroupSex.setFemaleCount(Integer.parseInt(ArrErrorByAgeGroupSex.get(i).getFemaleCount()));
                ByAgeGroupSex.setMaleCount(Integer.parseInt(ArrErrorByAgeGroupSex.get(i).getMaleCount()));
                arrayNoError.add(ByAgeGroupSex);
            }
        }
    }

      public static boolean isNumeric(String str) {
        boolean isNumeric =true;//= str.chars().allMatch(Character::isDigit);
        if (isNumeric) {
            return false;
        }
        return true;
    }
    /**
     * @return the arrayNoError
     */
    public ArrayList<ByAgeGroupSex> getArrayNoError() {
        return arrayNoError;
    }

    /**
     * @param arrayNoError the arrayNoError to set
     */
    public void setArrayNoError(ArrayList<ByAgeGroupSex> arrayNoError) {
        this.arrayNoError = arrayNoError;
    }

    /**
     * @return the arrayError
     */
    public ArrayList<byAgeGroupError> getArrayError() {
        return arrayError;
    }

    /**
     * @param arrayError the arrayError to set
     */
    public void setArrayError(ArrayList<byAgeGroupError> arrayError) {
        this.arrayError = arrayError;
    }
}
