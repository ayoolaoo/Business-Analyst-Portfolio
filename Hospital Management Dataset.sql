/*
Hospital Management Dataset

Skills Used: DDL, DML, Joins (INNER, LEFT), Multi-Table Joins (Patients, Doctors, Appointments, Treatments, Billing), Window Functions, Aggregations, Subqueries, Data Cleaning, Analytical SQL
*/

--Basic Table Exploration
-- View tables
SELECT * FROM patients LIMIT 10;
SELECT * FROM doctors LIMIT 10;
SELECT * FROM appointments LIMIT 10;
SELECT * FROM treatments LIMIT 10;
SELECT * FROM billing LIMIT 10


--Joining Key Tables
--Patient appointments table with doctor details table
SELECT 
    a.appointment_id,
    p.first_name AS patient_first_name,
    p.last_name AS patient_last_name,
    d.first_name AS doctor_first_name,
    d.last_name AS doctor_last_name,
    d.specialization,
    a.appointment_date,
    a.appointment_time,
    a.reason_for_visit,
    a.status
FROM appointments a
JOIN patients p 
    ON a.patient_id = p.patient_id
JOIN doctors d 
    ON a.doctor_id = d.doctor_id;
	
--Revenue and Billing Analysis
--Total hospital revenue
SELECT SUM(amount) AS total_revenue
FROM billing
		
--Revenue by payment method
SELECT 
    payment_method,
    SUM(amount) AS total_amount
FROM billing
GROUP BY payment_method
ORDER BY total_amount DESC;	
		
--Revenue by doctor
SELECT 
    d.doctor_id,
    d.first_name,
    d.last_name,
    SUM(b.amount) AS doctor_revenue
FROM billing b
JOIN treatments t ON b.treatment_id = t.treatment_id
JOIN appointments a ON t.appointment_id = a.appointment_id
JOIN doctors d ON a.doctor_id = d.doctor_id
GROUP BY d.doctor_id, d.first_name, d.last_name
ORDER BY doctor_revenue DESC;	
	
	
--Patient Behavior & Insights
--Number of appointments per patient
SELECT 
    p.patient_id,
    p.first_name,
    p.last_name,
    COUNT(a.appointment_id) AS total_appointments
FROM patients p
LEFT JOIN appointments a ON p.patient_id = a.patient_id
GROUP BY p.patient_id
ORDER BY total_appointments DESC;	

--Patients who spent the most (total billing)
SELECT 
    p.patient_id,
    p.first_name,
    p.last_name,
    SUM(b.amount) AS total_spent
FROM patients p
JOIN billing b ON p.patient_id = b.patient_id
GROUP BY p.patient_id
ORDER BY total_spent DESC;


--Doctor and their Workload Analysis
--Number of appointments per doctor
SELECT 
    d.doctor_id,
    d.first_name,
    d.last_name,
    d.specialization,
    COUNT(a.appointment_id) AS total_appointments
FROM doctors d
LEFT JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id
ORDER BY total_appointments DESC;

--Doctors with the highest treatment cost totals
SELECT 
    d.doctor_id,
    d.first_name,
    d.last_name,
    SUM(t.cost) AS total_treatment_cost
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id
JOIN treatments t ON a.appointment_id = t.appointment_id
GROUP BY d.doctor_id
ORDER BY total_treatment_cost DESC;

--Average experience of doctors per hospital branch
SELECT hospital_branch,
    ROUND(AVG(years_experience), 2) AS avg_experience
FROM doctors
GROUP BY hospital_branch;


--Treatment Analysis
--Most common treatment types
SELECT 
    treatment_type,
    COUNT(*) AS total_treatments
FROM treatments
GROUP BY treatment_type
ORDER BY total_treatments DESC;

--Most expensive treatments (Top 5)
SELECT treatment_type,
    AVG(cost) AS avg_cost
FROM treatments
GROUP BY treatment_type
ORDER BY avg_cost DESC
LIMIT 5;

--Which treatments generate the most revenue
SELECT 
    t.treatment_type,
    SUM(b.amount) AS total_revenue
FROM treatments t
JOIN billing b ON t.treatment_id = b.treatment_id
GROUP BY t.treatment_type
ORDER BY total_revenue DESC;

--Average cost per treatment type
SELECT 
    treatment_type,
    ROUND(AVG(cost), 2) AS avg_cost
FROM treatments
GROUP BY treatment_type;


--Appointment Analysis
--How many appointments are scheduled per day?
SELECT 
    appointment_date,
    COUNT(*) AS total_appointments
FROM appointments
GROUP BY appointment_date
ORDER BY appointment_date;

--Top 5 reasons for visit
SELECT 
    reason_for_visit,
    COUNT(*) AS total_visits
FROM appointments
GROUP BY reason_for_visit
ORDER BY total_visits DESC
LIMIT 5;

--Percentage of completed vs cancelled appointments
SELECT 
    status,
    COUNT(*) AS count_status,
    ROUND( (COUNT(*) * 100.0) / (SELECT COUNT(*) FROM appointments), 2 ) 
        AS percentage
FROM appointments
GROUP BY status;

--Which specialization handles the most patients?
SELECT 
    d.specialization,
    COUNT(a.appointment_id) AS total_appointments
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.specialization
ORDER BY total_appointments DESC;

--Which payment method brings in the most revenue
SELECT 
    payment_method,
    SUM(amount) AS total_revenue
FROM billing
GROUP BY payment_method
ORDER BY total_revenue DESC;


