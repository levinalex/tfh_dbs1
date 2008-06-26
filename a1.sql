-- Aufgabe 1.1

SELECT 
  artst.artnr, artst.artbez, artgru.grup_txt,
  count(aufpos.aufnr) as anzahl, 
  sum(aufpos.preis * aufpos.menge) as wert
FROM artst, aufpos, artgru
WHERE artst.artnr = aufpos.artnr AND artgru.gruppe = artst.gruppe
GROUP BY artst.artnr, artst.artbez, artgru.grup_txt
HAVING count(artst.artnr) > 1
ORDER BY artst.artnr

-- Aufgabe 1.2 (mit subquery)

SELECT DISTINCT vert.name, vert.vorname, kdbra.grup_txt as branche
FROM vert, kdst, kdbra
WHERE kdst.vertreter = vert.vertnr AND kdbra.branche = kdst.branche AND (
  SELECT avg(k2.umssoll) 
  FROM kdst k2
  WHERE k2.branche = kdst.branche) < kdst.umssoll

-- Aufgabe 1.3

SELECT kdgru.grup_txt, kdst.firma, kdst.umssoll
FROM 
  kdst,
  (SELECT k1.kdgruppe, min(k2.kdnr) kdnr, k2.umssoll
   FROM kdst k1, kdst k2
   WHERE k1.kdgruppe = k2.kdgruppe
   GROUP BY k1.kdgruppe, k2.umssoll
   HAVING k2.umssoll = min(k1.umssoll)) minumsatz,
  kdgru
WHERE 
  minumsatz.kdnr = kdst.kdnr AND
  kdst.kdgruppe IS NOT NULL AND
  kdgru.kdgruppe = kdst.kdgruppe
ORDER BY kdgru.grup_txt

-- Aufgabe 1.4

SELECT 
  vert.name, vert.vorname, 
  artst.artbez, sum(aufpos.menge) VerkaufteMenge
FROM vert, kdst, aufkopf, aufpos, artst
WHERE
  vert.vertnr = kdst.vertreter AND
  aufkopf.kdnr = kdst.kdnr AND
  aufpos.aufnr = aufkopf.aufnr AND
  aufpos.artnr = artst.artnr
GROUP BY vert.name, vert.vorname, artst.artbez
HAVING sum(aufpos.menge) > 0
ORDER BY vert.name, vert.vorname

-- Aufgabe 1.5

SELECT s.city
FROM s
LEFT JOIN p ON s.city = p.city
WHERE p.city is null

-- Aufgabe 1.6

SELECT 
  mng.empname as manager, mng.salary as mngsalery,
   e.empname as employee, e.salary,
   mng.salary - e.salary as difference
FROM e
LEFT JOIN e mng ON e.manager = mng.empno
WHERE mng.job = 'MANAGER'
ORDER BY mng.salary - e.salary

-- Aufgabe 1.7

SELECT s.suppname, p.partname, sum(sp.quantity) qty
FROM s jones, s, sp, p
WHERE
  jones.suppname = 'Jones' AND
  jones.city = s.city AND
  s.suppno = sp.suppno AND
  p.partno = sp.partno AND
  s.suppname != jones.suppname
GROUP BY s.suppname, p.partname

-- Aufgabe 1.8

SELECT j.jobname, sum(spj.quantity)
FROM j, p, spj, s
WHERE 
  p.partno = spj.partno AND
  s.suppno = spj.suppno AND
  j.jobno = spj.jobno AND
  p.partname = 'Bolt' AND
  s.suppname = 'Adams'
GROUP BY j.jobname



