Select a.Name,e.Patient_id,c.Staff_id,c.Staff_type||'  '||c.Staff_Designation
	"Type",l.Appointment_no App_No,l.Appointed_Charge,h.Treatment_type,h.Treatment_charge,(l.Appointed_Charge + h.Treatment_charge) as 		Total_Charge
	From Person a
	JOIN Person_Staff b
	ON a.Person_id=b.Person_id
	JOIN Staff c
	ON c.Staff_id=b.Staff_id
	JOIN Person_Patient f
	ON a.Person_id=f.Person_id
	JOIN Patient e
	ON e.Patient_id=f.Patient_id
	JOIN Person_Appointment k
	ON a.Person_id=k.Person_id
	JOIN Appointment l
	ON k.Appointment_no=l.Appointment_no
	JOIN Treatment h
	ON h.Treatment_id=l.Treatment_id
	Where Staff_Designation='Doctor' and Staff_type='Uncertified';
