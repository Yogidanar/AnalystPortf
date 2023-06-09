SELECT * FROM data_cabang;
/****** 
SELECT * FROM data_cabang;

ALTER TABLE data_cabang
add unit_kerja VARCHAR(60)

update data_cabang set cabkor = 'Kantor Cabang Koordinator Surakarta'
where induk = 2;

update data_cabang set cabkor = 'Kantor Cabang Koordinator Surakarta';

update data_cabang set cabang = 'Kantor Cabang Koordinator Surakarta'
where not nama like '%Klaten%';

update data_cabang set cabang = 'Kantor Cabang Klaten'
where nama like '%Klaten%';

update data_cabang set unit_kerja = nama ******/

select cabkor, cabang, unit_kerja
from data_cabang;