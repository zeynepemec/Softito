-- create
CREATE TABLE kullanicilar (
  id SERIAL PRIMARY KEY,
  ad VARCHAR(50),
  email VARCHAR(100)
);

--Crud işlemleri
CREATE TABLE siparisler(
id SERIAL PRIMARY KEY,
kullanici_id INT,
urun VARCHAR(100)
);

INSERT INTO kullanicilar (ad,email) VALUES ('Zeynep' , 'zeynep@gmail.com');
INSERT INTO kullanicilar (ad,email) VALUES ('Begum' , 'begum@gmail.com');
INSERT INTO kullanicilar (ad,email) VALUES ('Burcu' , 'burcu@gmail.com');

INSERT INTO siparisler (kullanici_id,urun) VALUES (1,'Kitap');
INSERT INTO siparisler (kullanici_id,urun) VALUES (2,'Defter');
INSERT INTO siparisler (kullanici_id,urun) VALUES (5,'Silgi');

SELECT *FROM kullanicilar;
SELECT *FROM siparisler;

SELECT kullanicilar.ad,siparisler.urun
FROM kullanicilar
INNER JOIN siparisler ON kullanicilar.id=siparisler.kullanici_id;

