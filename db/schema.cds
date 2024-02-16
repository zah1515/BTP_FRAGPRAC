namespace Fragmentprac;

entity college{
    key collegeId : String(10);
    collegeName : String(20);
    collegeType : String(20);
    collegeAddress : String(30);
    colltostud : Composition of many student on colltostud.studtocollege = $self;
}

entity student{
    key studentId : String(10);
    collegeId : String(10);
    studentName : String(20);
    studentAge : String(3);
    phone : String(10);
    studentAddress : String(30);
    studtocollege : Association to one college on studtocollege.collegeId = collegeId;
}

entity operation {
    key studentId : Integer;
    value1: Integer;
    value2: Integer;
    result: Integer;
}