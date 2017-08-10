package utils;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import entities.Transaction;
import models.TransactionModel;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.*;

/**
 * Created by vijayn on 8/10/2017.
 */
public class ReportGenerator {
    public static void setUpData(){
        java.util.List<Transaction> transactions = new TransactionModel().getTransaction();
        String arr[][] = new String[5][transactions.size()];
        int i=0;
        for(Transaction transaction:transactions){
            arr[0][i]=Long.toString(transaction.getTransaction_id());
            arr[1][i]=Long.toString(transaction.getBuyer_id());
            arr[2][i]=Long.toString(transaction.getSeller_id());
            arr[3][i]=Double.toString(transaction.getPrice());
            arr[4][i]=Integer.toString(transaction.getvehicle_id());
            i++;
        }

        int j=0;
        ReportGenerator.create(arr[j++],arr[j++],arr[j++],arr[j++],arr[j]);
        System.out.println("yalo");
    }

    public static void create(String[] transaction_id, String[] buyer_id,String[] seller_id, String[] price,String[] vehicle_id) {
        Document document = new Document();
        try
        {
            PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream("transactions.pdf"));
            document.open();
            //Image image1 = Image.getInstance("watermark.png");
            //document.add(image1);


            String imageUrl = "http://jenkov.com/images/" +
                    "20081123-20081123-3E1W7902-small-portrait.jpg";

            Image image2 = Image.getInstance("C:\\Users\\vijayn\\IdeaProjects\\VETS\\web\\assets\\paper_img\\logo.png");
            image2.setAlignment(Element.ALIGN_CENTER);
            document.add(image2);

            PdfPTable table = new PdfPTable(5); // 3 columns.
            table.setWidthPercentage(100); //Width 100%
            table.setSpacingBefore(10f); //Space before table
            table.setSpacingAfter(10f); //Space after table

            //Set Column widths
            float[] columnWidths = {1f, 1f, 1f,1f,1f};
            table.setWidths(columnWidths);

            PdfPCell cell1 = new PdfPCell(new Paragraph("TRANS_ID"));
            cell1.setPaddingLeft(10);
            cell1.setHorizontalAlignment(Element.ALIGN_CENTER);
            cell1.setVerticalAlignment(Element.ALIGN_MIDDLE);

            PdfPCell cell2 = new PdfPCell(new Paragraph("BUYER_ID"));
            cell2.setPaddingLeft(10);
            cell2.setHorizontalAlignment(Element.ALIGN_CENTER);
            cell2.setVerticalAlignment(Element.ALIGN_MIDDLE);

            PdfPCell cell3 = new PdfPCell(new Paragraph("SELLER_ID"));
            cell3.setPaddingLeft(10);
            cell3.setHorizontalAlignment(Element.ALIGN_CENTER);
            cell3.setVerticalAlignment(Element.ALIGN_MIDDLE);

            PdfPCell cell4 = new PdfPCell(new Paragraph("PRICE"));
            cell4.setPaddingLeft(10);
            cell4.setHorizontalAlignment(Element.ALIGN_CENTER);
            cell4.setVerticalAlignment(Element.ALIGN_MIDDLE);

            PdfPCell cell5 = new PdfPCell(new Paragraph("VEHICLE_ID"));
            cell5.setPaddingLeft(10);
            cell5.setHorizontalAlignment(Element.ALIGN_CENTER);
            cell5.setVerticalAlignment(Element.ALIGN_MIDDLE);
            /*PdfPCell cell4 = new PdfPCell(new Paragraph(name));
            cell1.setPaddingLeft(10);
            cell1.setHorizontalAlignment(Element.ALIGN_CENTER);
            cell1.setVerticalAlignment(Element.ALIGN_MIDDLE);

            PdfPCell cell5 = new PdfPCell(new Paragraph(model));
            cell2.setPaddingLeft(10);
            cell2.setHorizontalAlignment(Element.ALIGN_CENTER);
            cell2.setVerticalAlignment(Element.ALIGN_MIDDLE);

            PdfPCell cell6 = new PdfPCell(new Paragraph(price.toString()));
            cell3.setPaddingLeft(10);
            cell3.setHorizontalAlignment(Element.ALIGN_CENTER);
            cell3.setVerticalAlignment(Element.ALIGN_MIDDLE);*/

            table.addCell(cell1);
            table.addCell(cell2);
            table.addCell(cell3);
            table.addCell(cell4);
            table.addCell(cell5);
            //table.addCell(cell6);

            PdfPCell cells[][] = new PdfPCell[transaction_id.length][5];

            for(int i=0;i<cells.length;i++){
                for(int j=0;j<cells[i].length;j++){
                    String str="";
                    switch(j){
                        case 0:str=transaction_id[i];
                            break;
                        case 1:str=buyer_id[i];
                            break;
                        case 2:str=seller_id[i];
                            break;
                        case 3:str=price[i];
                            break;
                        case 4:str=vehicle_id[i];
                            break;
                    }
                    PdfPCell cell = new PdfPCell(new Paragraph(str));
                    cell.setPaddingLeft(10);
                    cell.setHorizontalAlignment(Element.ALIGN_CENTER);
                    cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
                    table.addCell(cell);
                }
            }

            document.add(table);
            document.close();
            writer.close();
        } catch (DocumentException e) {
            e.printStackTrace();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        catch (java.io.IOException io){
            io.printStackTrace();
        }
    }

}
