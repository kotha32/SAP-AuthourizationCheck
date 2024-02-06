namespace com.satinfotech.spaspal;

entity student{
    @title:'Student-ID'
    key stdid: String(20);
    @title:'First Name'
    fname: String(20) @mandatory;
    @title: 'Last Name'
    lname: String(10) @mandatory;
    @title: 'Email-ID'
    email: String(30) @mandatory;
    @title: 'Pan Number'
    pan_no: String(10) @mandatory
}