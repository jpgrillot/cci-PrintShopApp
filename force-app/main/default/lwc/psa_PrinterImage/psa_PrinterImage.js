import { LightningElement, api, wire } from 'lwc';
import {getRecord} from 'lightning/uiRecordApi';

const FIELDS = [
    'psa_Printer__c.Name',
    'psa_Printer__c.Printer_Image_URL__c',
];

export default class Psa_PrinterImage extends LightningElement {
    @api recordId;

    @wire(getRecord, {recordId: '$recordId', fields: FIELDS})
    printer;

    get name(){
        return this.printer.data.fields.Name.value;
    }

    get image(){
        return this.printer.data.fields.Printer_Image_URL__c.value;
    }
}