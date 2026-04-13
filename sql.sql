SELECT * FROM health_care.cleaned_data;

-- Total Patients
select count(*) as total_patients from cleaned_data;


-- Data Distribution 
SELECT 
    COUNT(DISTINCT sex) AS genders,
    COUNT(DISTINCT age_group) AS age_groups,
    COUNT(DISTINCT chest_pain_label) AS cp_types
FROM cleaned_data;


-- Age Analysis 
SELECT AVG(age) AS avg_age
FROM cleaned_data;

SELECT age_group, COUNT(*) AS patients
FROM cleaned_data
GROUP BY age_group;


-- Gender Analysis
SELECT sex, COUNT(*) AS total
FROM cleaned_data
GROUP BY sex;


-- Chest Pain Analysis
SELECT chest_pain_label, COUNT(*) AS total
FROM cleaned_data
GROUP BY chest_pain_label
ORDER BY total DESC;


-- Blood Pressure Analysis
SELECT bp_category, COUNT(*) AS total
FROM cleaned_data
GROUP BY bp_category;

SELECT bp_category, AVG(bp) AS avg_bp
FROM cleaned_data
GROUP BY bp_category;


-- Cholesterol Analysis
SELECT cholesterol_category, COUNT(*) AS total
FROM Cleaned_data
GROUP BY cholesterol_category;

SELECT *
FROM cleaned_data
WHERE cholesterol_category = 'High';


-- Heart Rate Analysis
SELECT heart-rate_category, COUNT(*) AS total
FROM cleaned_data
GROUP BY heart-rate_category;

SELECT AVG(max_hr) AS avg_heart_rate
FROM cleaned_data;


-- Exercise Angina Impact
SELECT exercise_angina, COUNT(*) AS total
FROM Cleaned_data
GROUP BY exercise_angina;


-- ECG (EKG) Analysis
SELECT ekg_results, COUNT(*) AS total
FROM cleaned_data
GROUP BY ekg_results;



-- Blood Sugar Analysis
SELECT blood_sugar, COUNT(*) AS total
FROM cleaned_data
GROUP BY blood_sugar;


-- ST Depression Analysis
SELECT AVG(st_depression) AS avg_st_depression
FROM cleaned_data;

SELECT *
FROM cleaned_data
WHERE st_depression > 2;


-- BP + Cholesterol + Heart Rate
SELECT 
    bp_category,
    cholesterol_category,
    heart_rate_category,
    COUNT(*) AS patients
FROM cleaned_data
GROUP BY 
    bp_category,
    cholesterol_category,
    heart_rate_category
ORDER BY patients DESC;


-- High Risk Profile
SELECT *
FROM cleaned_data
WHERE 
    bp_category = 'High'
    AND cholesterol_category = 'High'
    AND exercise_angina = 'Yes';
    
    SELECT 
    age_group,
    bp_category,
    COUNT(*) AS patients
FROM cleaned_data
GROUP BY age_group, bp_category
ORDER BY age_group;

