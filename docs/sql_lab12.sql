-- 1. Concatenate Course Name and Semester
SELECT concat(course_name, ' - ' ,semester)
FROM courses;

-- 2. Find Courses with Labs on Fridays
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'Fri%';

--3. Upcoming Assignments
SELECT due_date, course_id, title
FROM assignments
WHERE due_date > '2024-11-23';

-- 4. Count Assignments by Status
SELECT status, COUNT(status)
FROM assignments
GROUP BY (status);

-- 5. Longest Course Name
SELECT course_name, length(course_name)
FROM courses
ORDER BY length(course_name);

-- 6. Uppercase Course Names
SELECT upper(course_name)
FROM courses;

--7. Assignments Due in September
SELECT title, due_date, course_id
FROM assignments
WHERE due_date LIKE '%-09-%';

--8. Assignments with Missing Due Dates
SELECT *
FROM assignments
WHERE due_date is NULL;