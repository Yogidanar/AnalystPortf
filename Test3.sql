/****** 
select * from data_nasabah;

alter table data_nasabah
add KelompokUsia INT;

ALTER TABLE data_nasabah
modify column TanggalLahir datetime;

update data_nasabah
set KelompokUsia = CASE
WHEN YEAR(TanggalLahir) BETWEEN 1970 AND 1980  THEN '10'
WHEN YEAR(TanggalLahir) BETWEEN 1981 AND 1990  THEN '8'
END;  ******/ 
/****** MAAF KAK DATETIME DATE_FORMAT, DLL ERROR TERUS   ******/


select Pekerjaan, KelompokUsia
from data_nasabah;