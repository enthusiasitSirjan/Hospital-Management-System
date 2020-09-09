Select b.Appointment_no,a.Ward_type
	From Ward a
	JOIN Appointment b
	ON a.Ward_no=b.Ward_no
	where Ward_type='Emergency';
