package ExcelDemo;

import ModelDemoError.MaritalStatusTemp;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFClientAnchor;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFPalette;
import org.apache.poi.hssf.usermodel.HSSFPicture;
import org.apache.poi.hssf.usermodel.HSSFPictureData;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFShape;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CellValue;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.util.CellRangeAddress;

/**
 * Use Apache POI to read an Excel (.xls) file and output an HTML table per
 * sheet.
 *
 * @author howard
 */
public class ExcelMaritalStatus {

    ArrayList<MaritalStatusTemp> ArrMaritalStatusTemp;

    final private StringBuilder out = new StringBuilder(65536);
    final private SimpleDateFormat sdf;
    final private HSSFWorkbook book;
    final private HSSFPalette palette;
    final private FormulaEvaluator evaluator;
    private int colIndex;
    private int rowIndex, mergeStart, mergeEnd;
    // Row -> Column -> Pictures
    private Map<Integer, Map<Short, List<HSSFPictureData>>> pix = new HashMap<Integer, Map<Short, List<HSSFPictureData>>>();
    private String firstCell = "Caloocan City";
    private String secondCell = "Both Sexes";
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
    public ExcelMaritalStatus(final InputStream in, int sheetNumber) throws IOException {
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
        //for (int i = 0; i < book.getNumberOfSheets(); ++i) {
        //    table(book.getSheetAt(i));
        //}
        sheet = book.getSheetAt(sheetNumber);
        table(sheet);
    }

    public ExcelMaritalStatus(final HSSFWorkbook book, int sheetNumber) throws IOException {
        sdf = new SimpleDateFormat("dd/MM/yyyy");
        this.book = book;
        palette = book.getCustomPalette();
        evaluator = book.getCreationHelper().createFormulaEvaluator();
        //for (int i = 0; i < book.getNumberOfSheets(); ++i) {
        //    table(book.getSheetAt(i));
        //}
        sheet = book.getSheetAt(sheetNumber);
        table(sheet);
    }

    public String getErrors() {
        return errors;
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
//       
//        out.append("<table cellspacing='0' border='0' style='border-spacing:0; border-collapse:collapse;' class=\"table table-striped\">\n");
//        out.append("<tr><th>Location</th><th>Sex</th><th>Age Group</th><th>Total</th><th>Single</th><th>Married</th><th>Widowed</th><th>Divorced/Separated</th><th>Common Law/Live-in</th><th>Unknown</th></tr>");
//        
        ArrMaritalStatusTemp = new ArrayList<MaritalStatusTemp>();
        for (rowIndex = 6; rowIndex < sheet.getLastRowNum(); ++rowIndex) {
            HSSFRow row = sheet.getRow(rowIndex);
            if (row != null) {
                tr(row, ArrMaritalStatusTemp);
                //validation.checker;
            }
        }
//        //System.out.println("end");
//        out.append("</table>\n");
//        //System.out.println("end");
    }

    /**
     * (Each Excel sheet row becomes an HTML table row) Generates an HTML table
     * row which has the same height as the Excel row.
     *
     * @param row The Excel row.
     */
    private void tr(final HSSFRow row, ArrayList<MaritalStatusTemp> ArrMaritalStatusTemp) {
        if (row == null) {
            return;
        }
        //checks if null and if it contains the location
        if (row.getCell(0) != null && row.getCell(0).getCellType() == HSSFCell.CELL_TYPE_STRING) {
            if (row.getCell(0).getStringCellValue().contains("Age Group")
                    || row.getCell(0).getStringCellValue().contains("Barangay")
                    || row.getCell(0).getStringCellValue().contains("CALOOCAN CITY")
                    || row.getCell(0).getStringCellValue().contains("Both Sexes")
                    || row.getCell(0).getStringCellValue().equalsIgnoreCase("Male")
                    || row.getCell(0).getStringCellValue().equalsIgnoreCase("Female")) {
                if (row.getCell(0).getStringCellValue().contains("Age Group")) {
                    rowIndex++;
                    return;
                } else if (row.getCell(0).getStringCellValue().contains("CALOOCAN CITY")) {
                    firstCell = "Caloocan City";
                    return;
                } else if (row.getCell(0).getStringCellValue().toLowerCase().startsWith("barangay")) {
                    firstCell = row.getCell(0).getStringCellValue();
                    return;
                } else if (row.getCell(0).getStringCellValue().equalsIgnoreCase("Female")) {
                    secondCell = "Female";
                } else if (row.getCell(0).getStringCellValue().equalsIgnoreCase("Male")) {
                    secondCell = "Male";
                } else if (row.getCell(0).getStringCellValue().contains("Both Sexes")) {
                    secondCell = "Both Sexes";
                } 
            }
        }
        if (row.getCell(0) == null
                && row.getCell(1) == null
                && row.getCell(2) == null
                && row.getCell(4) == null
                && row.getCell(5) == null
                && row.getCell(6) == null
                && row.getCell(7) == null) {
            rowIndex++;
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

        MaritalStatusTemp MaritalStatusTemp = new MaritalStatusTemp();
        for (colIndex = 0; colIndex < 8; ++colIndex) {
            td(row.getCell(colIndex), MaritalStatusTemp);
        }
        ArrMaritalStatusTemp.add(MaritalStatusTemp);
//        out.append("</tr>\n");
    }

    /**
     * (Each Excel sheet cell becomes an HTML table cell) Generates an HTML
     * table cell which has the same font styles, alignments, colours and
     * borders as the Excel cell.
     *
     * @param cell The Excel cell.
     */
    private void td(final HSSFCell cell, MaritalStatusTemp MaritalStatusTemp) {

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

        }

        switch (colIndex) {
            case 0: //AGE GROUP and Location and Sex
                MaritalStatusTemp.setLocation(firstCell);
                MaritalStatusTemp.setBothSex(secondCell);
                MaritalStatusTemp.setAgeGroup(getFormat(cell));
                break;
            case 1: //BOTH TOTAL
                MaritalStatusTemp.setTotal(getFormat(cell));
                break;
            case 2://SINGLE
                MaritalStatusTemp.setSingle(getFormat(cell));
                break;
            case 3://MARRIED
                MaritalStatusTemp.setMarried(getFormat(cell));
                break;
            case 4://MARRIED
                MaritalStatusTemp.setWidowed(getFormat(cell));
                break;
            case 5://MARRIED
                MaritalStatusTemp.setDivorcedSeparated(getFormat(cell));
                break;
            case 6://MARRIED
                MaritalStatusTemp.setCommonLawLiveIn(getFormat(cell));
                break;
            case 7://MARRIED
                MaritalStatusTemp.setUnknown(getFormat(cell));
                break;
        }

    }

    public String getFormat(final HSSFCell cell) {

        String val = "";
        //GIAN WAT IS THIS
        ArrayList<Integer> arryNumeric = new ArrayList<Integer>();
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
                            val ="";
                            break;
                        case Cell.CELL_TYPE_ERROR:
                            val ="";
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
            if(colIndex==0){
                if(val.toLowerCase().contains("both sexes") ||
                    val.toLowerCase().contains("male")||
                    val.toLowerCase().contains("female")){
                        val = "10 years old and over";
                }
            }
        } catch (final Exception e) {
            val = e.getMessage();
        }
        return val;
    }

    public ArrayList<MaritalStatusTemp> getHTML() {
        return ArrMaritalStatusTemp;
    }
}
