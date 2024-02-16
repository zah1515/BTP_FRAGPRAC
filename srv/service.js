const cds = require('@sap/cds');
module.exports = cds.service.impl(async function () {
    let {
        operation

    } = this.entities;

    this.on('READ', operation.drafts, async (req, next) => {
        debugger
       
            const data1 = await SELECT.from(operation.drafts);
            console.log('-----------------------------------');

            const val1 = data1[0].value1;
            const val2 = data1[0].value2;
            //console.log(val2);

            const sum = val1 + val2;
            console.log(sum);

            await cds.transaction(req).run(
                UPDATE(operation.drafts)
                    .set({ result: sum }) // Update 'result' with new data
                    .where({ studentId: data1[0].studentId })
            );
       // }
        return next();
    });

    //debugger

});