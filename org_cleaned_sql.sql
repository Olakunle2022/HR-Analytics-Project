-- Cleaning the hr_data1 table to prepare employee information for analysis1
SELECT 
    emp_id,                                                -- Employee ID
    status,                                                -- Employment status (active, terminated, etc.)
    turnover,                                              -- Turnover indicator (e.g., 1 for left, 0 for active)
    location,                                              -- Location of the employee
    level,                                                 -- Job level or position in the organization
    date_of_joining,                                       -- Date the employee joined the organization
    date_of_birth,                                         -- Employee's date of birth
    COALESCE(last_working_date, '2014-02-07'::date) AS last_working_date,  -- Last working date; defaults to '2014-02-07' if NULL
    gender,                                                -- Gender of the employee
    department,                                            -- Department in which the employee works
    mgr_id,                                                -- Manager ID (reports to)
    cutoff_date,                                           -- Date up to which data is considered
    generation,                                            -- Generation category (e.g., Millennial, Gen Z)
    ROUND(emp_age::numeric, 2) AS emp_age                  -- Employee age, rounded to 2 decimal places
FROM 
    hr_data1;                                              -- Source table for employee data