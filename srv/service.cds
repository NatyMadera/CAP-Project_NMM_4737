using {com.silver_4737 as entities} from '../db/schema';

//Proyeccion de entidades en el servicio Silver_4737
service Silver_4737 {
    entity Headers as projection on entities.Headers;
    entity Items   as projection on entities.Items;
};

/** Code List */
entity Orderstatus as projection on entities.Orderstatus