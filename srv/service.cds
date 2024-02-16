using Fragmentprac as prac from '../db/schema';

service fracservice {

    entity college   as projection on prac.college;
    entity student   as projection on prac.student;


    @Common.SideEffects: {
        SourceProperties: [
            'value1',
            'value2'
        ],
        TargetProperties: ['result'],
    }

    @odata.draft.enabled
    entity operation as projection on prac.operation;


}
