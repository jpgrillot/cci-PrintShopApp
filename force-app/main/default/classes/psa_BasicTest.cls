/* Basic Test Class to test the functionality of the Print Shop App
* Test creation of Printer, Jobs, Projects, and Upgrades.
*/
@isTest
public class psa_BasicTest {
    // Test Setup
    @TestSetup
    static void testPrintShopData(){
        // Create a test Manufacturer
        Account testManufacturer = new Account(Name='Prusa Research',Industry='Manufacturing');
        insert testManufacturer;
        
        // Create Printer
        psa_Printer__c testPrinter = new psa_Printer__c(Name='MK3S',Manufacturer__c=testManufacturer.Id,Model__c='i3 MK3S+',Network_Name__c='OctoMK3S',Connectivity__c='OctoPrint',Status__c='Online',Type__c='FDM - Cartesian',Additional_Features__c='Direct-Drive;Enclosed;Air Filtration');
        insert testPrinter;
        
        // Create Filament
        psa_Filament__c testFDM = new psa_Filament__c(Name='Prusa Orange PETG',Manufacturer__c=testManufacturer.Id,Color__c='Orange',Size__c=1000,Material__c='PETG');
        insert testFDM;
        
        // Create Project
        psa_Project__c testProject = new psa_Project__c(Name='Pi4 Case');
        insert testProject;
    }
    @isTest
    static void printJobTest(){
        //Query test setup records
		psa_Project__c proj = [SELECT Id FROM psa_Project__c LIMIT 1];
        psa_Printer__c printer = [SELECT Id FROM psa_Printer__c LIMIT 1];
        psa_Filament__c filament = [SELECT Id FROM psa_Filament__c LIMIT 1];
        
        // Create Print Job
        test.startTest();
            psa_Print__c testPrint = new psa_Print__c(Name='Case',Project__c=proj.Id,Printer__c=printer.Id,Filament__c=filament.Id);
            insert testPrint;
        test.stopTest();
        
        psa_Print__c validPrint = [SELECT Id, Name FROM psa_Print__c LIMIT 1];
        System.assertEquals('Case',validPrint.Name,'Print was not created');
        
        // Update Printer to offline w/o Reason (negative test)
    }
}