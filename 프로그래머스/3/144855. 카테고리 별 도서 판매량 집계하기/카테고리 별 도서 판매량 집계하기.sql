-- 코드를 입력하세요
SELECT CATEGORY, sum(sales) TOTAL_SALES from BOOK b
left join BOOK_SALES s using(BOOK_ID)
where YEAR(SALES_DATE) = '2022' and MONTH(SALES_DATE) = '01'
group by CATEGORY
order by CATEGORY