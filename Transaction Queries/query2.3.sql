Select c.Staff_id,a.Name,c.Staff_type||'  '||c.Staff_Designation
	"Type",e.Appointment_no,e.Appointed_Date	
	FROM Person a 
	JOIN Person_Staff b
	ON a.Person_id=b.Person_id
	JOIN Staff c 
	ON c.Staff_id=b.Staff_id
	JOIN Appointment e
	ON c.Staff_id=e.Assigned_Staff_ID
	Where Appointed_Date in('25-DEC-2019');
