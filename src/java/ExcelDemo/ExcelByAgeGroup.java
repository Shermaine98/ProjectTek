/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ExcelDemo;

import ModelDemo.ByAgeGroupSex;
import ModelDemoError.byAgeGroupError;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFClientAnchor;
import org.apache.poi.hssf.usermodel.HSSFPalette;
import org.apache.poi.hssf.usermodel.HSSFPicture;
import org.apache.poi.hssf.usermodel.HSSFPictureData;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFShape;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellValue;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.util.CellRangeAddress;

/**
 *
 * @author shermainesy
 */
public class ExcelByAgeGroup {

     ArrayList<ByAgeGroupSex> arraybyAgeGroup;
        ArrayList<byAgeGroupError> arrayError;
    
    
    //ArrayList
    ArrayList<byAgeGroupError> ArrErrorByAgeGroupSex;

    final private StringBuilder out = new StringBuilder(65536);
    final private SimpleDateFormat sdf;
    final private HSSFWorkbook book;
    final private HSSFPalette palette;
    final private FormulaEvaluator evaluator;
    private int colIndex;
    private int rowIndex, mergeStart, mergeEnd;
    // Row -> Column -> Pictures
    private Map<Integer, Map<Short, List<HSSFPictureData>>> pix = new HashMap<Integer, Map<Short, List<HSSFPictureData>>>();
    private String firstCell = "Location";
    private Boolean isSecond = false;
    private boolean isMerged = false;
    private HSSFSheet sheet;
    String errors;

    /**
     * Generates HTML from the InputStream of an Excel file. Generates sheet
     * name in HTML h1 element.
     *
     * @param in InputStream of the Excel file.
     * @throws IOException When POI cannot read from the input stream.
     */
    public ExcelByAgeGroup(final InputStream in, int sheetNumber) throws IOException {
        sdf = new SimpleDateFormat("dd/MM/yyyy");
        if (in == null) {
            book = null;
            palette = null;
            evaluator = null;
            return;
        }
        book = new HSSFWorkbook(in);
        palette = book.getCustomPalette();
        evaluator = book.getCreationHelper().createFormulaEvaluator();
        sheet = book.getSheetAt(sheetNumber);
        table(sheet);
    }

    public ExcelByAgeGroup(final HSSFWorkbook book, int sheetNumber) throws IOException {
        sdf = new SimpleDateFormat("dd/MM/yyyy");
        this.book = book;
        palette = book.getCustomPalette();
        evaluator = book.getCreationHelper().createFormulaEvaluator();
        sheet = book.getSheetAt(sheetNumber);
        table(sheet);
    }

    /**
     * (Each Excel sheet produces an HTML table) Generates an HTML table with no
     * cell, border spacing or padding.
     *
     * @param sheet The Excel sheet.
     */
    private void table(final HSSFSheet sheet) {
        if (sheet == null) {
            return;
        }
        if (sheet.getDrawingPatriarch() != null) {
            final List<HSSFShape> shapes = sheet.getDrawingPatriarch()
                    .getChildren();
            for (int i = 0; i < shapes.size(); ++i) {
                if (shapes.get(i) instanceof HSSFPicture) {
                    try {
                        // Gain access to private field anchor.
                        final HSSFShape pic = shapes.get(i);
                        final Field f = HSSFShape.class
                                .getDeclaredField("anchor");
                        f.setAccessible(true);
                        final HSSFClientAnchor anchor = (HSSFClientAnchor) f
                                .get(pic);
                        // Store picture cell row, column and picture data.
                        if (!pix.containsKey(anchor.getRow1())) {
                            pix.put(anchor.getRow1(),
                                    new HashMap<Short, List<HSSFPictureData>>());
                        }
                        if (!pix.get(anchor.getRow1()).containsKey(
                                anchor.getCol1())) {
                            pix.get(anchor.getRow1()).put(anchor.getCol1(),
                                    new ArrayList<HSSFPictureData>());
                        }
                        pix.get(anchor.getRow1())
                                .get(anchor.getCol1())
                                .add(book.getAllPictures().get(
                                        ((HSSFPicture) pic).getPictureIndex()));
                    } catch (final Exception e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        }

        ArrErrorByAgeGroupSex = new ArrayList<>();
        for (rowIndex = 6; rowIndex < sheet.getLastRowNum(); ++rowIndex) {
            HSSFRow row = sheet.getRow(rowIndex);
            if (row != null) {
                tr(row, ArrErrorByAgeGroupSex);
            }
        }
    }

    /**
     * (Each Excel sheet row becomes an HTML table row) Generates an HTML table
     * row which has the same height as the Excel row.
     *
     * @param row The Excel row.
     */
    private void tr(final HSSFRow row, ArrayList<byAgeGroupError> ArrErrorByAgeGroupSex) {
        if (row == null) {
            return;
        }
        //checks if null and if it contains the location
        if (row.getCell(0) != null && row.getCell(0).getCellType() == HSSFCell.CELL_TYPE_STRING) {
            if (row.getCell(0).getStringCellValue().contains("Age Group")
                    || row.getCell(0).getStringCellValue().contains("Barangay")
                    || row.getCell(0).getStringCellValue().contains("CALOOCAN CITY")) {
                if (row.getCell(0).getStringCellValue().contains("Age Group")) {
                    rowIndex++;
                    return;
                } else if (row.getCell(0).getStringCellValue().contains("CALOOCAN CITY")) {
                    firstCell = "Caloocan City";
                    return;
                } else if (row.getCell(0).getStringCellValue().contains("Barangay")) {
                    firstCell = row.getCell(0).getStringCellValue();
                    return;
                }
            }
        }

        //WHAT IS THIS FOR
        if (row.getCell(0) == null || row.getCell(0).getCellType() == HSSFCell.CELL_TYPE_BLANK
                && row.getCell(1) == null || row.getCell(1).getCellType() == HSSFCell.CELL_TYPE_BLANK
                && row.getCell(2) == null || row.getCell(2).getCellType() == HSSFCell.CELL_TYPE_BLANK
                && row.getCell(3) == null || row.getCell(3).getCellType() == HSSFCell.CELL_TYPE_BLANK) {
//                    out.append("<tr><td name='nullValues'></td></tr>");
            return;
        }

        // Find merged cells in current row.
        for (int i = 0; i < row.getSheet().getNumMergedRegions(); ++i) {
            final CellRangeAddress merge = row.getSheet().getMergedRegion(i);
            if (rowIndex >= merge.getFirstRow()
                    && rowIndex <= merge.getLastRow()) {
                mergeStart = merge.getFirstColumn();
                mergeEnd = merge.getLastColumn();
                isMerged = true;
                break;
            } else {
                isMerged = false;
            }
        }
        byAgeGroupError byAgeGroupError = new byAgeGroupError();
        for (colIndex = 0; colIndex < 4; ++colIndex) {
            td(row.getCell(colIndex), byAgeGroupError);
        }
        ArrErrorByAgeGroupSex.add(byAgeGroupError);
        //getHTML();
    }

    /**
     * (Each Excel sheet cell becomes an HTML table cell) Generates an HTML
     * table cell which has the same font styles, alignments, colours and
     * borders as the Excel cell.
     *
     * @param cell The Excel cell.
     */
    private void td(final HSSFCell cell, byAgeGroupError byAgeGroupError) {
//        if (cell == null) {
//            out.append("<td contenteditable='true' bgcolor='#f2dede' title='There is no value in this cell'></td>");
//            return;
//        }

        int colspan = 1;
        if (colIndex == mergeStart) {
            // First cell in the merging region - set colspan.
            colspan = mergeEnd - mergeStart + 1;
        } else if (colIndex == mergeEnd) {
            // Last cell in the merging region - no more skipped cells.
            mergeStart = -1;
            mergeEnd = -1;
            return;
        } else if (mergeStart != -1 && mergeEnd != -1 && colIndex > mergeStart
                && colIndex < mergeEnd) {
            // Within the merging region - skip the cell.
            return;
        }

        if (colIndex == 0) {
            byAgeGroupError.setBarangay(firstCell);
        }

        //Check for incorrect/incomplete data.
        switch (colIndex) {
            case 0: //AGE GROUP
                byAgeGroupError.setAgeGroup(GetFormat(cell));
                break;
            case 1: //BOTH SEXES
                byAgeGroupError.setBothSex(GetFormat(cell));
                break;
            case 2://MALE
                byAgeGroupError.setMaleCount(GetFormat(cell));
                break;
            case 3://FEMALE
                byAgeGroupError.setFemaleCount(GetFormat(cell));
                break;
        }
    }

    public String GetFormat(final HSSFCell cell) {
        String val = "";
        try {
            switch (cell.getCellType()) {
                case HSSFCell.CELL_TYPE_STRING:
                    val = cell.getStringCellValue();
                    break;
                case HSSFCell.CELL_TYPE_NUMERIC:
                    // POI does not distinguish between integer and double, thus:
                    final double original = cell.getNumericCellValue(),
                     rounded = Math.round(original);
                    if (Math.abs(rounded - original) < 0.00000000000000001) {
                        val = String.valueOf((int) rounded);
                    } else {
                        val = String.valueOf(original);
                    }
                    break;
                case HSSFCell.CELL_TYPE_FORMULA:
                    final CellValue cv = evaluator.evaluate(cell);
                    switch (cv.getCellType()) {
                        case Cell.CELL_TYPE_BOOLEAN:
                            val = String.valueOf(cv.getBooleanValue());
                            break;
                        case Cell.CELL_TYPE_NUMERIC:
                            val = String.valueOf(cv.getNumberValue());
                            break;
                        case Cell.CELL_TYPE_STRING:
                            val = String.valueOf(cv.getStringValue());
                            break;
                        case Cell.CELL_TYPE_BLANK:
                            val = "";
                            break;
                        case Cell.CELL_TYPE_ERROR:
                            val = "";
                            break;
                        default:
                            break;
                    }
                    break;
                default:
                    // Neither string or number? Could be a date.
                    try {
                        val = sdf.format(cell.getDateCellValue());
                    } catch (final Exception e1) {
                    }
            }
        } catch (final Exception e) {
            val = e.getMessage();
        }
        return val;
    }
    //Check ERROR

    public void getHTML() {
        ByAgeGroupSex ByAgeGroupSex;
        arraybyAgeGroup = new ArrayList<ByAgeGroupSex>();
        arrayError = new ArrayList<byAgeGroupError>();
        for (int i = 0; i < ArrErrorByAgeGroupSex.size(); i++) {
            // Check if null 
            if (ArrErrorByAgeGroupSex.get(i).getBarangay() == null
                    || ArrErrorByAgeGroupSex.get(i).getAgeGroup() == null
                    || ArrErrorByAgeGroupSex.get(i).getBothSex() == null
                    || ArrErrorByAgeGroupSex.get(i).getMaleCount()== null
                    || ArrErrorByAgeGroupSex.get(i).getFemaleCount()== null) {
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
                arraybyAgeGroup.add(ByAgeGroupSex);
            }   
        }
    }

     public ArrayList<byAgeGroupError> error(){
            getHTML();
            return arrayError;
    }
    
    public ArrayList<ByAgeGroupSex> noError(){
        getHTML();
        return arraybyAgeGroup;
    
    }
    public static boolean isNumeric(String str) {
        boolean isNumeric =true;//= str.chars().allMatch(Character::isDigit);
        if (isNumeric) {
            return false;
        }
        return true;
    }
}

