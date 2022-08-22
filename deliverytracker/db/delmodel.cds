namespace dt;
using {
    cuid,
    managed,
    sap.common
} from '@sap/cds/common';

entity DeliveryStatus : managed {
    key ID : UUID @odata.Type:'Edm.String';
    Resource       : String(200)   @title : 'Resource Name';
    TaskCat        : String(30) @title : 'Task Category';
    TaskID          : String(10) @title : 'Task ID';
    PlannedStartDate : String(30) @title : 'Planned Start Date';
    PlannedEndDate          : String(30)   @title : 'Planned End Date';
    ActualStartDate        : String(30) @title : 'Actual Start Date';
    ActualEndDate        : String(30) @title : 'Actual End Date';
    HasBandwidth         : Boolean @title      : 'Bandwidth Available';

    }