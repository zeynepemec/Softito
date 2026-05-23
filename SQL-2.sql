-- create (Kitaplar tablosunu oluşturuyoruz)
CREATE TABLE kitaplar (
    id SERIAL PRIMARY KEY,
    kitap_adi VARCHAR(100),
    yazar VARCHAR(100),
    sayfa_sayisi INT
);

-- insert (Tabloya örnek veriler ekliyoruz)
INSERT INTO kitaplar (kitap_adi, yazar, sayfa_sayisi)
VALUES ('Cesur Yeni Dünya', 'Aldous Huxley', 272);

INSERT INTO kitaplar (kitap_adi, yazar, sayfa_sayisi)
VALUES ('Mülksüzler', 'Ursula K. Le Guin', 344);

-- fetch (Tüm kitapları listeliyoruz)
SELECT * FROM kitaplar;

-- id'si 1 olan kitabı ve yazarını getiriyoruz
SELECT kitap_adi, yazar
FROM kitaplar
WHERE id = 1;

-- update (id'si 1 olan kitabın sayfa sayısını güncelliyoruz)
UPDATE kitaplar
SET sayfa_sayisi = 260
WHERE id = 1;

-- Güncelleme sonrası tabloyu kontrol ediyoruz
SELECT * FROM kitaplar;

-- delete (id'si 1 olan kitabı tablodan siliyoruz)
DELETE
FROM kitaplar
WHERE id = 1;

-- Silme işlemi sonrası tablonun son halini görüyoruz
SELECT * FROM kitaplar;