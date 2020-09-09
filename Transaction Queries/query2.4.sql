Select a.Person_id, c.Patient_id, a.Name,a.gender,c.DOB,c.Blood_group,c.Patient_type Type,e.Appointed_Date,e.Assigned_Staff_ID 		Assigned_Staff
	FROM Person a 
	JOIN Person_Patient b
	ON a.Person_id=b.Person_id
	JOIN Patient c 
	ON c.Patient_id=b.Patient_id
	JOIN Person_Appointment d
	ON d.Person_id=a.Person_id
	JOIN Appointment e
	ON e.Appointment_no=d.Appointment_no
	JOIN Staff f
	ON f.Staff_id=e.Assigned_Staff_ID
	Where Appointed_Date='25-DEC-2019';
