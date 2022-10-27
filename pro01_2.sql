-- 글 추가(등록)
insert into boarda values(bseq.nextval,'글제목keg','글내용글내용글내용입니다keg','keg',sysdate);
insert into boarda values(bseq.nextval,'글제목a','글내용글내용글내용입니다a','kea',sysdate);
insert into boarda values(bseq.nextval,'글제목b','글내용글내용글내용입니다b','keb',sysdate);
insert into boarda values(bseq.nextval,'글제목c','글내용글내용글내용입니다c','kec',sysdate);
insert into boarda values(bseq.nextval,'글제목d','글내용글내용글내용입니다d','ked',sysdate);
insert into boarda values(bseq.nextval,'글제목e','글내용글내용글내용입니다e','kee',sysdate);
insert into boarda values(bseq.nextval,'글제목f','글내용글내용글내용입니다f','keb',sysdate);
insert into boarda values(bseq.nextval,'글제목g','글내용글내용글내용입니다g','kec',sysdate);
insert into boarda values(bseq.nextval,'글제목h','글내용글내용글내용입니다h','kea',sysdate);
-- insert into boarda values (bseq.nextval, ?, ?, ?, sysdate);
-- pstmt.setString(1, title);
-- pstmt.setString(2, content);
-- pstmt.setString(3, author);

-- 글 목록
select * from boarda;
desc boarda;

select count(*) as cnt from boarda;
select * from boarda where rownum between 1 and 10 order by no desc;
-- select * from boarda where rownum between ? and ? order by no desc;
-- pstmt.setInt(1, startNum);
-- pstmt.setInt(2, endNum);
select no, title, content, author, resdate from 
(select rownum rn, no, title, content, author, resdate from boarda 
order by no desc) t1 where t1.rn between 11 and 20;
-- select no, title, content, author, resdate from 
-- (select rownum rn, no, title, content, author, resdate from boarda 
-- order by no desc) t1 where t1.rn between ? and ?;
-- pstmt.setInt(1, startNum);
-- pstmt.setInt(2, endNum);
-- pageCount = (amount % 10==0) ? (amount / 10) : (amount / 10) + 1;
-- startNum = curPage * 10 - 9;
-- endNum = curPage * 10;

-- 글 상세보기
select a.no no, a.title tit, a.content con, b.name nm,
to_char(a.resdate, 'yyyy-MM-dd') res from boarda a inner join membera b 
on a.author=b.id where a.no=1
-- select a.no no, a.title tit, a.content con, b.name nm,
-- a.resdate res from boarda a inner join membera b 
-- on a.author=b.id where a.no=?
-- pstmt.setInt(1, no);
-- rs.getInt("no");
-- rs.getString("tit");
-- rs.getString("con");
-- rs.getString("nm");
-- rs.getString("res");

-- 글 수정
update boarda set title='제목 블라블라', content='내용 블라블라' where no=1;
-- update boarda set title=?, content=? where no=?
-- pstmt.setString(1, title);
-- pstmt.setString(2, content);
-- pstmt.setInt(3, no);

-- 글 삭제
delete from boarda where no=1;
-- delete from boarda where no=?;
-- pstmt.setInt(1, no);

select sysdate now from dual;

