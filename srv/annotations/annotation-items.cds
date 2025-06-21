using {com.silver_4737} from '../service';

annotate silver_4737.Items with {


    ID               @title: 'Id';
    name             @title: 'Name';
    description      @title: 'Description';
    releasedate      @title: 'Release Date';
    discontinueddate @title: 'Discontinueddate';
    price            @title: 'Price'     @Measures.ISOCurrency: currency_code; // precio asociado a la moneda (currency)
    currency         @title: 'Currency'  @Common.IsCurrency; // Indica que el campo es una moneda
    height           @title: 'Height'    @Measures.Unit       : unitofmeasure; // campo de medida, asociado a esta unidad
    width            @title: 'Width'     @Measures.Unit       : unitofmeasure;
    depth            @title: 'Depth'     @Measures.Unit       : unitofmeasure;
    quantity         @title: 'Quantity';
    unitofmeasure    @title: 'Unit of Measure';

};

annotate silver_4737.Items with @(
    UI.HeaderInfo: {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Item',
        TypeNamePlural: 'Items',
        Title         : {
            $Type: 'UI.DataField',
            Value: name,
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: description,
        },
    },

    UI.LineItem  : [
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
                Value: name,
            },
        {
                $Type: 'UI.DataField',
                Value: description,
            },
        {
            $Type                : 'UI.DataField',
            Value                : releasedate,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '6rem'
 
            },
        },
        {
            $Type                : 'UI.DataField',
            Value                : discontinueddate,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '8rem'
 
            },
        },
        {
            $Type                : 'UI.DataField',
            Value                : price,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '8rem'
 
            },
        },
         {
            $Type                : 'UI.DataField',
            Value                : height,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '8rem'
 
            },
        },
        {
            $Type                : 'UI.DataField',
            Value                : depth,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '8rem'
 
            },
        },
        {
            $Type                : 'UI.DataField',
            Value                : quantity,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '6rem'
            },
        },
        {
            $Type                : 'UI.DataField',
            Value                : unitofmeasure,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '6rem'
            },
        },
    ]
);

annotate silver_4737.Items with @(UI.FieldGroup #Items: {
    $Type: 'UI.FieldGroupType',
    Data : [
        {
            $Type : 'UI.DataField',
            Value: ID,
        },
        {
            $Type: 'UI.DataField',
            Value: name,
        },
        {
            $Type: 'UI.DataField',
            Value: description,
        },
        {
            $Type: 'UI.DataField',
            Value: releasedate,
        },
        {
            $Type: 'UI.DataField',
            Value: discontinueddate,
        },
        {
            $Type: 'UI.DataField',
            Value: price,
        },
        {
            $Type: 'UI.DataField',
            Value: height,
        },
        {
            $Type: 'UI.DataField',
            Value: width,
        },
        {
            $Type: 'UI.DataField',
            Value: depth,
        },
        {
            $Type: 'UI.DataField',
            Value: quantity,
        },
        {
            $Type: 'UI.DataField',
            Value: unitofmeasure,
        },
    ],
},

UI.Facets : [
    {
       $Type: 'UI.ReferenceFacet',
       Target : '@UI.FieldGroup#Items',
       Label : 'Items'
    },
],

);
