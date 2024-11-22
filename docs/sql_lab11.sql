-- List of Solutions
-- 1. Assignments for a Specific Course
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

-- 2. Earliest Assignment Due Date
SELECT min(due_date), title, course_id
FROM assignments;

-- 3. Latest Assignment Due Date
SELECT max(due_date), title, course_id
FROM assignments;

-- 4. Assignments Due on a Specific Date
SELECT title, course_id, due_date
FROM assignments
WHERE due_date = '2024-10-08';

-- 5. Find All Assignments Due in October
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

-- 6. Find the Most Recent Completed Assignment
SELECT due_date, course_id, title, status
FROM assignments
WHERE status = 'Completed' AND due_date LIKE '2024%';