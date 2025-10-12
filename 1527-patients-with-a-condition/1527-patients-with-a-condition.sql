/* Write your T-SQL query statement below */
SELECT patient_id, patient_name, conditions
FROM Patients
WHERE
  conditions IS NOT NULL AND
  (
    conditions = 'DIAB1'
    OR conditions LIKE 'DIAB1 %'
    OR conditions LIKE '% DIAB1'
    OR conditions LIKE '% DIAB1 %'
    OR conditions LIKE 'DIAB1%'
    OR conditions LIKE '% DIAB1%'
  );