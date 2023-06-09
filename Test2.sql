
/****** alter table data_nasabah
add CekTanggal VARCHAR;

update data_nasabah
set CekTanggal = case when  DATE_FORMAT(STR_TO_DATE(TanggalLahir, '%Y-%m-%d')) is null then false else true end;  ******/

select IdNasabah, KodeCabang, NamaNasabah, CekTanggal
from data_nasabah;