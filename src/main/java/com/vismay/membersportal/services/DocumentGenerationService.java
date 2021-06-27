package com.vismay.membersportal.services;

import com.itextpdf.barcodes.BarcodeQRCode;
import com.itextpdf.io.image.ImageData;
import com.itextpdf.io.image.ImageDataFactory;
import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.kernel.pdf.canvas.draw.DottedLine;
import com.itextpdf.kernel.pdf.canvas.draw.SolidLine;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.*;
import com.itextpdf.layout.property.TextAlignment;
import com.itextpdf.layout.property.UnitValue;
import com.vismay.membersportal.databeans.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.List;

@Service
public class DocumentGenerationService {

    private static String fileName="C:/Users/visma/Downloads/member-basic.pdf";
    private static String chiefFileName="C:/Users/visma/Downloads/member-chief.pdf";
    private static String commiteeFileName="C:/Users/visma/Downloads/commitee-informtation.pdf";
    private static String memberBook="C:/Users/visma/Downloads/samaj-Book.pdf";
    private static String personalIdentityCard="C:/Users/visma/Downloads/personal-identity-card.pdf";

    @Autowired
    private DBFileStorageService dbFileStorageService;

    public  void generateMemberBasicInformationPdf(List<MemberRegistrationDatabean> allMemberList) throws Exception {

        File file = new File(fileName);
        file.getParentFile().mkdirs();

        PdfDocument pdfDoc = new PdfDocument(new PdfWriter(fileName));
        Document doc = new Document(pdfDoc, PageSize.LEGAL.rotate());
        doc.setMargins(0 , 0, 0, 0);

        ImageData imageData = ImageDataFactory.create("C:/Users/visma/Downloads/logo.jpg");
        Image pdfImg = new Image(imageData);
        pdfImg.setAutoScale(true);
        doc.add(pdfImg);

        Table table = new Table(6).useAllAvailableWidth();
        table.setTextAlignment(TextAlignment.CENTER);

        table.setMarginTop(30);
        table.setMarginLeft(10);
        table.setMarginRight(10);
        table.setMarginBottom(10);

        table.addCell(setCellValue("Full Name"));
        table.addCell(setCellValue("Village"));
        table.addCell(setCellValue("Address"));
        table.addCell(setCellValue("Mobile No."));
        table.addCell(setCellValue("Birth Date"));
        table.addCell(setCellValue("Blood Group"));


        for (MemberRegistrationDatabean databean:allMemberList) {
            table.addCell(setCellValue(databean.getFullName()));
            table.addCell(setCellValue(databean.getVillage()));
            table.addCell(setCellValue(databean.getAddress()));
            table.addCell(setCellValue(databean.getMobileNo()));
            table.addCell(setCellValue(databean.getBirthDate()));
            table.addCell(setCellValue(databean.getBloodGroup()));
        }

        doc.add(table);

        doc.close();



    }

    public  void generateMemberBook(List<MemberRegistrationDatabean> allMemberList) throws Exception {

        File file = new File(memberBook);
        file.getParentFile().mkdirs();

        PdfDocument pdfDoc = new PdfDocument(new PdfWriter(memberBook));
        Document doc = new Document(pdfDoc, PageSize.Default);
        doc.setMargins(0 , 0, 0, 0);

        ImageData imageData = ImageDataFactory.create("C:/Users/visma/Downloads/logo.jpg");
        Image pdfImg = new Image(imageData);
        pdfImg.setAutoScale(true);
        doc.add(pdfImg);

        Table partationTable = new Table(1).useAllAvailableWidth();
        partationTable.setTextAlignment(TextAlignment.CENTER);
        partationTable.setKeepTogether(true);


        partationTable.setMarginTop(30);
        partationTable.setMarginLeft(10);
        partationTable.setMarginRight(10);
        partationTable.setMarginBottom(10);



        for (MemberRegistrationDatabean databean:allMemberList) {


            Table memberDetailTable = new Table(UnitValue.createPercentArray(new float[]{2,2,2,2})).useAllAvailableWidth();
            memberDetailTable.setTextAlignment(TextAlignment.LEFT);
            memberDetailTable.setPadding(1);





            FilesUploadDataBean filesUploadDataBean=dbFileStorageService.getFileFromId(databean.getImage());

            ImageData data = ImageDataFactory.create(filesUploadDataBean.getData());

            Image image = new Image(data);
            image.setHeight(150);
            image.setWidth(150);

            Cell photoCell=new Cell();
            photoCell.add(image);
            photoCell.setPadding(10);

            Cell fullNameCell=new Cell(0,3);
            fullNameCell.add(setCellValue(databean.getFullName()));
            fullNameCell.setPadding(10);


            memberDetailTable.addCell(photoCell);

            //memberDetailTable.addCell(setCellValue("Full Name  "));
            memberDetailTable.addCell(fullNameCell);

            memberDetailTable.addCell(setCellValue("Member ID "));
            memberDetailTable.addCell(setCellValue(databean.getGender()));

            memberDetailTable.addCell(setCellValue("Gender "));
            memberDetailTable.addCell(setCellValue(databean.getMemberId().toString()));

            memberDetailTable.addCell(setCellValue("Age "));
            memberDetailTable.addCell(setCellValue(databean.getAge()));

            memberDetailTable.addCell(setCellValue("Mobile No. "));
            memberDetailTable.addCell(setCellValue(databean.getMobileNo()));

            memberDetailTable.addCell(setCellValue("Email Address "));
            memberDetailTable.addCell(setCellValue(databean.getEmailAddress()));

            memberDetailTable.addCell(setCellValue("Birth date"));
            memberDetailTable.addCell(setCellValue(databean.getBirthDate()));

            memberDetailTable.addCell(setCellValue("Blood Group"));
            memberDetailTable.addCell(setCellValue(databean.getBloodGroup()));

            memberDetailTable.addCell(setCellValue("Marital Status"));
            memberDetailTable.addCell(setCellValue(databean.getMaritalStatus()));

            memberDetailTable.addCell(setCellValue("Address"));
            memberDetailTable.addCell(setCellValue(databean.getAddress()));

            memberDetailTable.addCell(setCellValue("Village"));
            memberDetailTable.addCell(setCellValue(databean.getVillage()));

            memberDetailTable.addCell(setCellValue("Street"));
            memberDetailTable.addCell(setCellValue(databean.getStreet()));

            memberDetailTable.addCell(setCellValue("Pin Code"));
            memberDetailTable.addCell(setCellValue(databean.getPinCode()));




            Cell memberDetailCell=new Cell().add(memberDetailTable);
            memberDetailCell.setPaddingBottom(10);

            partationTable.addCell(memberDetailCell);



        }




        doc.add(partationTable);

        doc.close();



    }



    public  void generateChiefMemberInformationPdf(List<MemberRegistrationDatabean> allMemberList) throws Exception {

        File file = new File(chiefFileName);
        file.getParentFile().mkdirs();

        PdfDocument pdfDoc = new PdfDocument(new PdfWriter(chiefFileName));
        Document doc = new Document(pdfDoc, PageSize.LEGAL.rotate());
        doc.setMargins(0 , 0, 0, 0);

        ImageData imageData = ImageDataFactory.create("C:/Users/visma/Downloads/logo.jpg");
        Image pdfImg = new Image(imageData);
        pdfImg.setAutoScale(true);
        doc.add(pdfImg);

        Table table = new Table(2).useAllAvailableWidth();
        table.setTextAlignment(TextAlignment.LEFT);

        table.setMarginTop(30);
        table.setMarginLeft(10);
        table.setMarginRight(10);
        table.setMarginBottom(10);



        Cell cell=new Cell(0,2);
        cell.add(new Paragraph("Chief Member Information - 24 Gam leva patidar Samaj , Kothamba"));
        cell.setPadding(10);
        table.addCell(cell);


        for (MemberRegistrationDatabean databean:allMemberList) {

            Paragraph paragraph=new Paragraph();
            paragraph.add(databean.getFullName()+ "\n");
            paragraph.add(databean.getAddress() + " , " + databean.getVillage());
            paragraph.add("\n"+ "Mobile No . :- "+databean.getMobileNo());
            paragraph.setMargin(1);
            table.addCell(paragraph);
        }

        doc.add(table);

        doc.close();



    }

    public  void generateCommiteeInformationPdf(List<CommiteeDatabean> allMemberList) throws Exception {

        File file = new File(commiteeFileName);
        file.getParentFile().mkdirs();

        PdfDocument pdfDoc = new PdfDocument(new PdfWriter(commiteeFileName));
        Document doc = new Document(pdfDoc, PageSize.LEGAL.rotate());
        doc.setMargins(0 , 0, 0, 0);

        ImageData imageData = ImageDataFactory.create("C:/Users/visma/Downloads/logo.jpg");
        Image pdfImg = new Image(imageData);
        pdfImg.setAutoScale(true);
        doc.add(pdfImg);

        Table table = new Table(UnitValue.createPercentArray(new float[]{2,2,4})).useAllAvailableWidth();
        table.setTextAlignment(TextAlignment.LEFT);

        table.setMarginTop(30);
        table.setMarginLeft(10);
        table.setMarginRight(10);
        table.setMarginBottom(10);



        Cell cell=new Cell(0,3);
        cell.add(new Paragraph("Commitee Information - 24 Gam leva patidar Samaj , Kothamba"));
        cell.setPadding(10);
        table.addCell(cell);

        table.addCell(setCellValue("Committee Name"));
        table.addCell(setCellValue("Committee Description"));
        table.addCell(setCellValue("Committee Member Information"));

        for (CommiteeDatabean databean:allMemberList) {

            table.addCell(setCellValue(databean.getCommiteeTitle()));
            table.addCell(setCellValue(databean.getDescription()));

            Table subTable = new Table(3).useAllAvailableWidth();
            subTable.setTextAlignment(TextAlignment.LEFT);
            subTable.setPadding(1);

            subTable.addCell(setCellValue("SR No."));
            subTable.addCell(setCellValue("Committee Designation"));
            subTable.addCell(setCellValue("Name Of Assigned Member"));

            int i = 1;
            for (CommiteeMemberDataBean dataBean:databean.getCommiteeMembers()) {
                subTable.addCell(String.valueOf(i));
                subTable.addCell(dataBean.getNameOfCommitee());
                subTable.addCell(dataBean.getNameOfMember());
                i++;
            }

            subTable.setMarginTop(5);
            subTable.setMarginLeft(5);
            subTable.setMarginRight(5);
            subTable.setMarginBottom(5);

            Cell innerCell=new Cell().add(subTable);
            table.addCell(innerCell);

        }

        doc.add(table);

        doc.close();



    }

    public  void generateMemberIdentityCardPdf(MemberRegistrationDatabean databean) throws Exception {

        File file = new File(personalIdentityCard);
        file.getParentFile().mkdirs();

        PdfDocument pdfDoc = new PdfDocument(new PdfWriter(personalIdentityCard));
        Document doc = new Document(pdfDoc, PageSize.LEGAL.rotate());
        doc.setMargins(0 , 0, 0, 0);

        ImageData imageData = ImageDataFactory.create("C:/Users/visma/Downloads/logo.jpg");
        Image pdfImg = new Image(imageData);
        pdfImg.setAutoScale(true);
        doc.add(pdfImg);


        FilesUploadDataBean filesUploadDataBean=dbFileStorageService.getFileFromId(databean.getImage());

        ImageData data = ImageDataFactory.create(filesUploadDataBean.getData());

        Paragraph paragraph=new Paragraph();
        paragraph.setMarginTop(15);

        Image image = new Image(data);
        image.setHeight(150);
        image.setWidth(150);

        paragraph.add(image);


        paragraph.add("   Personal Identity Card ");
        paragraph.setFontSize(40);
        paragraph.setTextAlignment(TextAlignment.JUSTIFIED_ALL);


        BarcodeQRCode qrCode = new BarcodeQRCode("Example QR Code Creation in iText7");
        PdfFormXObject barcodeObject = qrCode.createFormXObject(ColorConstants.RED, pdfDoc);
        Image barcodeImage = new Image(barcodeObject).setWidth(150f).setHeight(150f);
        paragraph.add(barcodeImage);



        doc.add(paragraph);
        doc.add(new LineSeparator(new SolidLine()));



        Table table = new Table(2).useAllAvailableWidth();
        table.setTextAlignment(TextAlignment.CENTER);

        table.setMarginTop(20);
        table.setMarginLeft(10);
        table.setMarginRight(10);
        table.setMarginBottom(10);


        //memberDetailTable.addCell(setCellValue("Full Name  "));
        table.addCell("Full Name");
        table.addCell(setCellValue(databean.getFullName()));

        table.addCell(setCellValue("Member ID "));
        table.addCell(setCellValue(databean.getGender()));

        table.addCell(setCellValue("Gender "));
        table.addCell(setCellValue(databean.getMemberId().toString()));

        table.addCell(setCellValue("Age "));
        table.addCell(setCellValue(databean.getAge()));

        table.addCell(setCellValue("Mobile No. "));
        table.addCell(setCellValue(databean.getMobileNo()));

        table.addCell(setCellValue("Email Address "));
        table.addCell(setCellValue(databean.getEmailAddress()));

        table.addCell(setCellValue("Birth date"));
        table.addCell(setCellValue(databean.getBirthDate()));

        table.addCell(setCellValue("Blood Group"));
        table.addCell(setCellValue(databean.getBloodGroup()));

        table.addCell(setCellValue("Marital Status"));
        table.addCell(setCellValue(databean.getMaritalStatus()));

        table.addCell(setCellValue("Address"));
        table.addCell(setCellValue(databean.getAddress()));

        table.addCell(setCellValue("Village"));
        table.addCell(setCellValue(databean.getVillage()));

        table.addCell(setCellValue("Street"));
        table.addCell(setCellValue(databean.getStreet()));

        table.addCell(setCellValue("Pin Code"));
        table.addCell(setCellValue(databean.getPinCode()));

        doc.add(table);

        Table qualificationInformationTable = new Table(5).useAllAvailableWidth();
        qualificationInformationTable.setTextAlignment(TextAlignment.CENTER);

        qualificationInformationTable.setMarginTop(20);
        qualificationInformationTable.setMarginLeft(10);
        qualificationInformationTable.setMarginRight(10);
        qualificationInformationTable.setMarginBottom(10);



        int i=1;
        for (QualificationInformation qualificationInformation:databean.getQualificationInformations()) {

            qualificationInformationTable.addCell(setCellValue("SR No."));
            qualificationInformationTable.addCell(setCellValue(String.valueOf(i)));

            qualificationInformationTable.addCell(setCellValue("Name of Course"));
            qualificationInformationTable.addCell(setCellValue(qualificationInformation.getNameOfCourse()));

            qualificationInformationTable.addCell(setCellValue("School / University"));
            qualificationInformationTable.addCell(setCellValue(qualificationInformation.getInstituteName()));

            qualificationInformationTable.addCell(setCellValue("Passing Year"));
            qualificationInformationTable.addCell(setCellValue(qualificationInformation.getPassingYear()));

            qualificationInformationTable.addCell(setCellValue("Percentage"));
            qualificationInformationTable.addCell(setCellValue(qualificationInformation.getPercentage()));

            i++;
        }

        doc.add(qualificationInformationTable);

        Table revenueInformationTable = new Table(5).useAllAvailableWidth();
        revenueInformationTable.setTextAlignment(TextAlignment.CENTER);

        revenueInformationTable.setMarginTop(20);
        revenueInformationTable.setMarginLeft(10);
        revenueInformationTable.setMarginRight(10);
        revenueInformationTable.setMarginBottom(10);



        int y=1;
        for (RevenueInformation revenueInformation:databean.getRevenueInformations()) {

            revenueInformationTable.addCell(setCellValue("SR No."));
            revenueInformationTable.addCell(setCellValue(String.valueOf(y)));

            revenueInformationTable.addCell(setCellValue("Type OF Revenue"));
            revenueInformationTable.addCell(setCellValue(revenueInformation.getTypeOFRevenue()));

            revenueInformationTable.addCell(setCellValue("Government / Private"));
            revenueInformationTable.addCell(setCellValue(revenueInformation.getTypeOfJob()));

            revenueInformationTable.addCell(setCellValue("Experience in Years"));
            revenueInformationTable.addCell(setCellValue(revenueInformation.getExperience()));

            revenueInformationTable.addCell(setCellValue("Working Place"));
            revenueInformationTable.addCell(setCellValue(revenueInformation.getWorkingPlace()));

            y++;
        }

        doc.add(revenueInformationTable);




        doc.close();



    }


    public Cell setCellValue(String value){
        Cell cell=new Cell();
        cell.add(new Paragraph(value));
        cell.setPadding(10);
        return cell;
    }


}
