Select 	c.Patient_id,a.Name,d.t_country,d.t_province,d.t_city,d.t_street,d.t_street_no,
	d.p_country,d.p_province,d.p_city,d.p_street,d.p_street_no,
	e.Email_address,e.Cell_int,e.Fax_no
	FROM Person a 
	JOIN Person_Patient b
	ON a.Person_id=b.Person_id
	JOIN Patient c 
	ON c.Patient_id=b.Patient_id
	JOIN Address d
	ON d.Address_id=a.Address_id
	JOIN Person_Contact f
	ON f.Person_id=a.Person_id
	JOIN Contact e
	ON e.Contact_id=f.Contact_id;
