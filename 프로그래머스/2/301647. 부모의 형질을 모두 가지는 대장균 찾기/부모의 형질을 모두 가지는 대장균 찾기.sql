-- 코드를 작성해주세요
select a.ID, a.GENOTYPE, b.GENOTYPE AS PARENT_GENOTYPE from ECOLI_DATA a
join ECOLI_DATA b ON a.PARENT_ID = b.ID
where (a.GENOTYPE & b.GENOTYPE)  = b.GENOTYPE
order by ID