-- 글목록
select * from boarda;
select count(*) as cnt from boarda;
select * boarda where rownum between 1 and 10 order by no desc;
-- select * from boarda where rownum between ? and ? order by no desc;
pstmt.setInt(1, starNum);
pstmt.setInt(2, endNum);

select no, title, content, author, resdate from
(select rownum rn, no, title, content, author, resdate from boarda order by resdate desc) t1 where t1.rn between 1 and 10;
-- select no, title, content, author, resdate from (select rownum rn, no, title, content, author, resdate from boarda
-- order by no desc) t1 where t1.rn between ? and ?;
-- pstmt.setInt(1, startNum);
-- pstmt.setInt(2, endNum);
-- pageCount = (amount % 10==0)? (amount /10): (amount/10)+1;
-- startNum= curpage*10-9;
-- endNum= curpage*10;

-- 글 상세보기
select a.no no, a.title tit, a.content con, b.name nm, a.resdate res from boarda a inner join membera b on a.author=b.id where a.no=1;
-- select a.no no, a.title tit, a.content con, b.name nm, a.resdate res from boarda a inner join membera b on a.author=b.id where a.no=?;
-- pstmt.setInt(1, no);
