-- Joining the tables (hr_cleaned_data, rating_cleaned, survey_cleaned) 
-- on primary keys (emp_id and mgr_id) to obtain comprehensive employee data
SELECT 
    h.emp_id,                  -- Employee ID
    h.status,                  -- Employment status (e.g., active, terminated)
    h.turnover,                -- Turnover status
    h.location,                -- Employee location
    h.level,                   -- Employment level (e.g., senior, junior)
    h.date_of_joining,         -- Date the employee joined the company
    h.date_of_birth,           -- Date of birth of the employee
    h.last_working_date,       -- Last working date if applicable
    h.gender,                  -- Gender of the employee
    h.department,              -- Department name
    h.mgr_id,                  -- Manager ID
    h.cutoff_date,             -- Cutoff date for data capture
    h.generation,              -- Generation category (e.g., Gen Z, Millennial)
    h.emp_age,                 -- Employee age
    s.mgr_effectiveness,       -- Manager's effectiveness rating from survey
    s.career_satisfaction,     -- Employee's career satisfaction score
    s.perf_satisfaction,       -- Employee's performance satisfaction score
    s.work_satisfaction,       -- Employee's work satisfaction score
    r.rating                   -- Overall employee rating
FROM 
    survey_cleaned AS s        -- Survey data table with manager effectiveness and satisfaction scores
INNER JOIN
    hr_cleaned_data AS h       -- HR data table with employee demographics and employment details
ON 
    s.mgr_id = h.mgr_id        -- Joining survey and HR data on manager ID (mgr_id)

INNER JOIN 
    rating_cleaned AS r        -- Rating data table with overall ratings for each employee
ON 
    h.emp_id = r.emp_id;       -- Joining HR and rating data on employee ID (emp_id)