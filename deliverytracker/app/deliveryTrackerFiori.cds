using dt as mydt from '../db/delmodel';

annotate mydt.DeliveryStatus with @UI : {
    HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Delivery Tracker',
        TypeNamePlural : 'Delivery Tracker',
    }
}
;



annotate mydt.DeliveryStatus with @odata.draft.enabled;

annotate mydt.DeliveryStatus with @(UI : {
    SelectionFields : [
       Resource,
       TaskID,
       TaskCat,
       HasBandwidth
    ],
    LineItem        : [
        {
            Value : Resource,
            Label : 'Resource'
        },
        {
            Value : TaskID,
            Label : 'Task ID'
        },
        {
            Value : TaskCat,
            Label : 'Task Category'
        },
        {
            Value : PlannedStartDate,
            Label : 'Planned Start Date'
        },
        {
            Value : PlannedEndDate,
            Label : 'Planend End Date'
        },
        {
            Value : ActualStartDate,
            Label : 'Actual Start Date'
        },
        {
            Value : ActualEndDate,
            Label : 'Actual End Date'
        },
        {
            Value : HasBandwidth,
            Label : 'Has Bandwidth'
        },
        
    ]
}, );

annotate mydt.DeliveryStatus with @(
	UI: {
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: 'Resource Details', Target: '@UI.FieldGroup#Resource'},
			{$Type: 'UI.ReferenceFacet', Label: 'Dates', Target:  '@UI.FieldGroup#Dates'},
			{$Type: 'UI.ReferenceFacet', Label: 'Details', Target: '@UI.FieldGroup#Details'},
			{$Type: 'UI.ReferenceFacet', Label: 'Admin', Target: '@UI.FieldGroup#Admin'},
		],
		FieldGroup#Resource: {
			Data: [
				{Value: Resource},
				{Value: HasBandwidth}, 
            ]
			
		},
		FieldGroup#Dates: {
			Data: [
				{Value: PlannedStartDate },
                {Value: PlannedEndDate },
                {Value: ActualStartDate },
                {Value: ActualEndDate },
				
			]
		},
        FieldGroup#Details: {
			Data: [
				{Value: TaskID },
				{Value: TaskCat},
				
			]
		},
		FieldGroup#Admin: {
			Data: [
				{Value: createdBy},
				{Value: createdAt},
				{Value: modifiedBy},
				{Value: modifiedAt}
			]
		}
	}
);
