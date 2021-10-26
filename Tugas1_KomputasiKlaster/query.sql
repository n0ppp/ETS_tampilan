USE `kluster`

CREATE VIEW tampilan AS
SELECT 
	`hasil`.`id_siswa`,`Siswa`.`nrp`,`Siswa`.`nama`,
	MAX(CASE WHEN `hasil`.`matkul`="Fisika" THEN `hasil`.`skor` ELSE 0 END) AS "Fisika",
	MAX(CASE WHEN `hasil`.`matkul`="Kimia" THEN `hasil`.`skor` ELSE 0 END) AS "Kimia",
	MAX(CASE WHEN `hasil`.`matkul`="Matematika" THEN `hasil`.`skor` ELSE 0 END) AS "Matematika",
	MAX(CASE WHEN `hasil`.`matkul`="Biologi" THEN `hasil`.`skor` ELSE 0 END) AS "Biologi",
	MAX(CASE WHEN `hasil`.`matkul`="Agama" THEN `hasil`.`skor` ELSE 0 END) AS "Agama",
	MAX(CASE WHEN `hasil`.`matkul`="Bahasa Indonesia" THEN `hasil`.`skor` ELSE 0 END) AS "Bahasa Indonesia",
	MAX(CASE WHEN `hasil`.`matkul`="Bahasa Inggris" THEN `hasil`.`skor` ELSE 0 END) AS "Bahasa Inggris"
FROM `hasil`  INNER JOIN `Siswa` ON `hasil`.`id_siswa`=`Siswa`.`id`
GROUP BY `hasil`.`id_siswa`;

SELECT 
	`hasil`.`id_siswa`,`Siswa`.`nrp`,`Siswa`.`nama`,
	MAX(CASE WHEN `hasil`.`matkul`="Fisika" THEN `hasil`.`skor` ELSE 0 END) AS "Fisika",
	MAX(CASE WHEN `hasil`.`matkul`="Kimia" THEN `hasil`.`skor` ELSE 0 END) AS "Kimia",
	MAX(CASE WHEN `hasil`.`matkul`="Matematika" THEN `hasil`.`skor` ELSE 0 END) AS "Matematika",
	MAX(CASE WHEN `hasil`.`matkul`="Biologi" THEN `hasil`.`skor` ELSE 0 END) AS "Biologi",
	MAX(CASE WHEN `hasil`.`matkul`="Agama" THEN `hasil`.`skor` ELSE 0 END) AS "Agama",
	MAX(CASE WHEN `hasil`.`matkul`="Bahasa Indonesia" THEN `hasil`.`skor` ELSE 0 END) AS "Bahasa Indonesia",
	MAX(CASE WHEN `hasil`.`matkul`="Bahasa Inggris" THEN `hasil`.`skor` ELSE 0 END) AS "Bahasa Inggris"
FROM `hasil`  INNER JOIN `Siswa` ON `hasil`.`id_siswa`=`Siswa`.`id`
GROUP BY `hasil`.`id_siswa`;
