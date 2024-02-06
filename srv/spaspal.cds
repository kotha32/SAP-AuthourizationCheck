using { com.satinfotech.spaspal as db } from '../db/schema';

service spaspal {
    entity student as projection on db.student;
}

annotate spaspal.student with {
    fname @assert.format: '^[a-zA-Z]{2,}$';
    lname @assert.format: '^[a-zA-Z]{2,}$';    
    email @assert.format: '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    pan_no @assert.format: '^[A-Z]{5}[0-9]{4}[A-Z]{1}';
}

annotate spaspal.student with @(
    UI.LineItem: [
        {
            $Type: 'UI.DataField',
            Value: stdid
        },
        {
            $Type: 'UI.DataField',
            Value: fname
        },
        {
            $Type: 'UI.DataField',
            Value: lname
        },
        {
            $Type: 'UI.DataField',
            Value: email
        },
        {
            $Type: 'UI.DataField',
            Value: pan_no 
        }
    ],
    UI.SelectionFields: [fname, lname, email, pan_no],
);