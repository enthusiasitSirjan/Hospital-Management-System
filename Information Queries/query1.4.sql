Select 	a.Person_id,c.Staff_id,e.Patient_id,a.Name,a.gender,
	e.DOB,e.Blood_group,e.Patient_type,c.Staff_type
	From Person a
	JOIN Person_Staff b
	ON a.Person_id=b.Person_id
	JOIN Staff c
	ON c.Staff_id=b.Staff_id
	JOIN Person_Patient f
	ON a.Person_id=f.Person_id
	JOIN Patient e
	ON e.Patient_id=f.Patient_id;
