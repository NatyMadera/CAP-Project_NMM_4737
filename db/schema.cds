namespace com.silver_4737;

using {
    //    cuid,
    //    managed,
    sap.common.CodeList,
    sap.common.Currencies
} from '@sap/cds/common';


entity Headers {
    key ID           : String(36);
        email        : String(36);
        firtname     : String(30);
        lastname     : String(30);
        country      : String(30);
        createon     : Date;
        deliverydate : DateTime;
        orderstatus : Association to Orderstatus;
        imageurl     : String(255);
        toItems      : Composition of many Items
                           on toItems.header = $self
};

entity Items {
    key ID               : String(36);
        name             : String(40);
        description      : String(40);
        releasedate      : Date;
        discontinueddate : Date;
        price            : Decimal(12, 2);
        currency         : Association to Currencies;
        height           : Decimal(15, 3);
        width            : Decimal(13, 3);
        depth            : Decimal(12, 2);
        quantity         : Decimal(16, 2);
        unitofmeasure    : String default 'CM';
        header           : Association to Headers;
};

entity Orderstatus : CodeList {
    key code        : String(20) enum {
            InStock = 'In Stock';
            OutOfStock = 'Out of Stock';
            LowAvailability = 'Low Availability';
        };
        criticality : Integer;
};
