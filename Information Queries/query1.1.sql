Select a.Person_id, c.Patient_id, a.Name,a.gender,c.DOB,c.Blood_group,c.Patient_type Type
	FROM Person a 
	JOIN Person_Patient b
	ON a.Person_id=b.Person_id
	JOIN Patient c 
	ON c.Patient_id=b.Patient_id;
