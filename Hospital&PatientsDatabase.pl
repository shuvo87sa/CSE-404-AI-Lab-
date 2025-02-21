/* Hospital & Patients Database */

/* Doctors and Specialties */
doctor(dr_smith, cardiology).
doctor(dr_jones, neurology).
doctor(dr_clark, orthopedics).
doctor(dr_williams, dermatology).
doctor(dr_taylor, pediatrics).
doctor(dr_davis, oncology).
doctor(dr_miller, gastroenterology).
doctor(dr_brown, psychiatry).
doctor(dr_wilson, endocrinology).
doctor(dr_moore, nephrology).

doctor_specialty(Doctor, Specialty) :- doctor(Doctor, Specialty).

/* Patients & Illnesses */
patient(john_doe, heart_disease).
patient(jane_smith, migraine).
patient(alex_brown, fracture).
patient(emily_johnson, eczema).
patient(chris_white, leukemia).
patient(sam_wilson, diabetes).
patient(linda_moore, hypertension).
patient(michael_taylor, arthritis).
patient(susan_clark, asthma).
patient(robert_miller, kidney_failure).

patient_disease(Patient, Disease) :- patient(Patient, Disease).

/* Appointments */
appointment(john_doe, dr_smith, '2025-03-10').
appointment(jane_smith, dr_jones, '2025-03-11').
appointment(alex_brown, dr_clark, '2025-03-12').
appointment(emily_johnson, dr_williams, '2025-03-13').
appointment(chris_white, dr_davis, '2025-03-14').
appointment(sam_wilson, dr_miller, '2025-03-15').
appointment(linda_moore, dr_brown, '2025-03-16').
appointment(michael_taylor, dr_wilson, '2025-03-17').
appointment(susan_clark, dr_moore, '2025-03-18').
appointment(robert_miller, dr_clark, '2025-03-19').

appointment_details(Patient, Doctor, Date) :- appointment(Patient, Doctor, Date).

/* Room Assignments */
room(101, john_doe).
room(102, jane_smith).
room(103, alex_brown).
room(104, emily_johnson).
room(105, chris_white).
room(106, sam_wilson).
room(107, linda_moore).
room(108, michael_taylor).
room(109, susan_clark).
room(110, robert_miller).

room_assignment(Room, Patient) :- room(Room, Patient).

/* Surgeries */
surgery(john_doe, '2025-03-15').
surgery(alex_brown, '2025-03-16').
surgery(susan_clark, '2025-03-20').
surgery(robert_miller, '2025-03-22').

surgery_schedule(Patient, Date) :- surgery(Patient, Date).

/* Billing System */
bill(john_doe, 5000).
bill(jane_smith, 3000).
bill(alex_brown, 7000).
bill(emily_johnson, 2000).
bill(chris_white, 10000).
bill(sam_wilson, 4500).
bill(linda_moore, 6000).
bill(michael_taylor, 5200).
bill(susan_clark, 7500).
bill(robert_miller, 9800).

total_bill(Patient, Amount) :- bill(Patient, Amount).

/* Emergency Cases */
emergency_case(john_doe).
emergency_case(chris_white).
emergency_case(robert_miller).
emergency_case(susan_clark).

is_emergency(Patient) :- emergency_case(Patient).

/* Ambulance Services */
ambulance_call(john_doe, '2025-03-09').
ambulance_call(chris_white, '2025-03-10').
ambulance_call(susan_clark, '2025-03-19').
ambulance_call(robert_miller, '2025-03-21').

ambulance_service(Patient, Date) :- ambulance_call(Patient, Date).

/* Hospital Staff */
staff(nurse_anna, nurse, 3000).
staff(nurse_bob, nurse, 3200).
staff(admin_charlie, admin, 4000).
staff(technician_dan, technician, 3500).
staff(doctor_assistant_amy, assistant, 4500).
staff(doctor_assistant_jack, assistant, 4700).
staff(receptionist_lily, receptionist, 2800).
staff(receptionist_mark, receptionist, 2900).

staff_salary(Name, Role, Salary) :- staff(Name, Role, Salary).

/* Financial Calculations */
total_earnings(800000).
total_salaries(90000).
total_profit(E) :- total_earnings(E), total_salaries(S), Profit is E - S, write(Profit).
