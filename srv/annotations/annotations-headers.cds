using {com.silver_4737} from '../service';

using from './annotation-items';

annotate silver_4737.Headers with @odata.draft.enabled;

annotate silver_4737.Headers with {

    ID           @title: 'Id';
    email        @title: 'Email';
    firtname     @title: 'First Name';
    lastname     @title: 'Last Name';
    country      @title: 'Country';
    createon     @title: 'Create On';
    deliverydate @title: 'Delivery Date';
    orderstatus  @title: 'Order Status';
    imageurl     @title: 'Image';
};

annotate silver_4737.Headers with {
    orderstatus  @Common: {
        Text           : orderstatus.name, //muestra el nombre del campo estado
        TextArrangement: #TextOnly,
    };
    ID           @Common: {ValueList: { //despliegue de lista en el filtro
        $Type         : 'Common.ValueListType',
        CollectionPath: 'Headers', //campo donde se guarda la lista
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut', //campo donde se mostrará la lista
                LocalDataProperty: ID,
                ValueListProperty: 'ID', //visualizacion lista
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly', //campo donde se mostrará la lista
                ValueListProperty: 'firtname', //visualizacion lista
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'lastname',
            },
        ],
    }, };

    country      @Common: {ValueList: { //despliegue de lista en el filtro
        $Type         : 'Common.ValueListType',
        CollectionPath: 'Headers', //campo donde se guarda la lista
        Parameters    : [{
            $Type            : 'Common.ValueListParameterInOut', //campo donde se mostrará la lista
            LocalDataProperty: country,
            ValueListProperty: 'country', //visualizacion lista
        }, ]
    }

    };

}
    annotate silver_4737.Headers with @(

    Common.SemanticKey : [
        ID
    ],

    UI.HeaderInfo : {                                   //Informacion de la cabecera
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Order',
        TypeNamePlural : 'Orders',
        Title : {                                       //Informacion de la cabecera cuando navego
            $Type : 'UI.DataField',
            Value : firtname,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : country,
        },
        ImageUrl : {
            $value: imageurl,
        }
    },

        UI.SelectionFields: [
            ID,
            firtname,
            lastname,
            country,
            orderstatus_code,
        ],

        UI.LineItem       : [
            
            {
            $Type                : 'UI.DataField',
            Value                : ID,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '6rem'
 
            },
        },
            {
                $Type: 'UI.DataField',
                Value: email,
            },
            {
            $Type                : 'UI.DataField',
            Value                : firtname,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '8rem'
 
            },
        },
            {
            $Type                : 'UI.DataField',
            Value                : lastname,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '8rem'
 
            },
        },
            {
            $Type                : 'UI.DataField',
            Value                : country,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '6rem'
 
            },
        },
            {
                $Type: 'UI.DataField',
                Value: createon,
            },
            {
                $Type: 'UI.DataField',
                Value: deliverydate,
            },
            {
                $Type      : 'UI.DataField',
                Value      : orderstatus_code,
                Criticality: orderstatus.criticality
            },
            {
                $Type: 'UI.DataField',
                Value: imageurl,
            },


        ],

    UI.FieldGroup #Headers : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Value : firtname,
            },
            {
                $Type : 'UI.DataField',
                Value : lastname,
            },
            {
                $Type : 'UI.DataField',
                Value : country,
            },
            {
                $Type : 'UI.DataField',
                Value : createon,
            },
            {
                $Type : 'UI.DataField',
                Value : deliverydate,
            },
            {
                $Type : 'UI.DataField',
                Value : orderstatus_code, Criticality : orderstatus.criticality
            },
             {
                $Type : 'UI.DataField',
                Value : imageurl,
            },
        ]
    },

    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#Headers',
            Label : 'Order',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target : 'toItems/@UI.LineItem',
            Label : 'Items',
        }
    ]


    );
