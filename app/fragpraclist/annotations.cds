using fracservice as service from '../../srv/service';

annotate service.college with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'collegeId',
            Value : collegeId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'collegeName',
            Value : collegeName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'collegeType',
            Value : collegeType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'collegeAddress',
            Value : collegeAddress,
        },
    ]
);
annotate service.college with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'collegeId',
                Value : collegeId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'collegeName',
                Value : collegeName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'collegeType',
                Value : collegeType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'collegeAddress',
                Value : collegeAddress,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
