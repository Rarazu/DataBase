-- 1. Relationship
CREATE TABLE karyawan(
nama varchar(30) NOT NULL, id_dep int(5) NOT NULL
)ENGINE = MyISAM;

CREATE TABLE departemen( id_dep int(5) NOT NULL,
nama_dep varchar(30) NOT NULL, PRIMARY KEY(id_dep)
)ENGINE = MyISAM;

-- mengisi tabel
insert into karyawan values
('Agus','10'),
('Budi','16'),
('Citra','12'),
('Dani','17');

insert into departemen values
('10','Penelitian'),
('11','Pemasaran'),
('12','SDM'),
('13','Keuangan');

-- 2. Inner Join
SELECT *
FROM karyawan INNER JOIN departemen
ON karyawan.id_dep = departemen.id_dep;
-- bentuk implisit
SELECT * FROM karyawan, departemen
WHERE karyawan.id_dep = departemen.id_dep;

-- untuk mengambil nama karyawan dan nama departemen saja
SELECT karyawan.nama, departemen.nama_dep FROM karyawan
INNER JOIN departemen
ON karyawan.id_dep = departemen.id_dep;
-- bentuk lainnya
SELECT k.nama, d.nama_dep
FROM karyawan k INNER JOIN departemen d ON k.id_dep =
d.id_dep;

-- 3. Outer Join
-- left
SELECT *
FROM karyawan k LEFT OUTER JOIN departemen d ON
k.id_dep = d.id_dep;
-- menampilkan yang tidak mempunyai departemen
SELECT *
FROM karyawan k LEFT OUTER JOIN departemen d ON
k.id_dep = d.id_dep
WHERE d.id_dep IS NULL;

-- right
SELECT *
FROM karyawan k RIGHT OUTER JOIN departemen d ON
k.id_dep = d.id_dep;

-- full
SELECT *
FROM karyawan k LEFT OUTER JOIN departemen d ON
k.id_dep = d.id_dep
UNION SELECT *
FROM karyawan k RIGHT OUTER JOIN departemen d ON
k.id_dep = d.id_dep;

-- 4. Cross Join
--di mana kondisi join selalu dievaluasi true.
--Secara matematis, jika A dan B merupakan dua himpunan, maka
--cross join-nya sama dengan X.
SELECT *
FROM karyawan CROSS JOIN departemen;
-- bentuk impisit
SELECT * FROM karyawan, departemen; 

-- 5. Union
CREATE TABLE karyawan2(
nama varchar(30) NOT NULL, id_dep int(5) NOT NULL
)ENGINE = MyISAM;
-- insert table
insert into karyawan2 values
('Dani','17'),
('Anisa','18'),
('Bagus','12');
--UNION
SELECT nama, id_dep
FROM karyawan
UNION
SELECT nama, id_dep
FROM karyawan2;
--UNION ALL
SELECT nama, id_dep
FROM karyawan
UNION ALL
SELECT nama, id_dep
FROM karyawan2;