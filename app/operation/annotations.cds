using fracservice as service from '../../srv/service';

annotate service.operation with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'studentId',
            Value : studentId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'value1',
            Value : value1,
        },
        {
            $Type : 'UI.DataField',
            Label : 'value2',
            Value : value2,
        },
        {
            $Type : 'UI.DataField',
            Label : 'result',
            Value : result,
        },
    ]
);
annotate service.operation with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'studentId',
                Value : studentId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'value1',
                Value : value1,
                //@Common.FieldControl: 1,
            },
            {
                $Type : 'UI.DataField',
                Label : 'value2',
                Value : value2,
            },
            {
                $Type : 'UI.DataField',
                Label : 'result',
                Value : result,
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
