-- 코드를 작성해주세요
WITH employee_scores AS (
    SELECT 
        EMP_NO, 
        SUM(SCORE) AS SCORE 
    FROM 
        HR_EMPLOYEES e
    LEFT JOIN 
        HR_GRADE g USING(EMP_NO)
    GROUP BY 
        EMP_NO
)

SELECT 
    SCORE,
    EMP_NO, 
    EMP_NAME,
    POSITION,
    EMAIL
FROM 
    HR_EMPLOYEES
LEFT JOIN employee_scores
USING(EMP_NO)
WHERE 
    SCORE = (SELECT MAX(SCORE) FROM employee_scores);