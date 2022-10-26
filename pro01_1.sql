create table membera(
id varchar2(16) primary key,
pw varchar2(20) not null,
name varchar2(50) not null,
email varchar2(100),
tel varchar2(13),
regdate date default sysdate);

create table boarda(
no number primary key,
title varchar2(100) not null,
content varchar2(600),
author varchar2(16),
resdate date default sysdate);

create sequence bseq increment by 1 start with 1;
alter table boarda add constraint b_fk foreign key (author) references membera (id);

-- 회원 가입
insert into memberA values('keg','1234','고유진','keg@naver.com','010-1111-1111',sysdate);
insert into memberA values('kea','123a','고유a','kea@naver.com','010-1111-111a',sysdate);
insert into memberA values('keb','123b','고유b','keb@naver.com','010-1111-111b',sysdate);
insert into memberA values('kec','123c','고유c','kec@naver.com','010-1111-111c',sysdate);
insert into memberA values('ked','123d','고유d','ked@naver.com','010-1111-111d',sysdate);
insert into memberA values('kee','123e','고유e','kee@naver.com','010-1111-111e',sysdate);
-- insert into membera values (?,?,?,?,?,sysdate);
-- pstmt.setString(1, id);
-- pstmt.setString(2, pw);
-- pstmt.setString(3, name);
-- pstmt.setString(4, email);
-- pstmt.setString(5, tel);

-- 회원 목록
select * from membera;
desc membera;

-- 로그인
select * from membera where id='keg' and pw='1234';
-- "select * from membera where id='"+id+"' and pw="'"+pw+"';  -- Statement
-- select * from membera where id=? and pw=?;	-- PrepareStatement
-- pstmt.setString(1, id);
-- pstmt.setString(2, pw);


-- 회원 정보 수정
update membera set pw='1231', tel='010-1111-1112', email='keg@naver.com' where id='keg'; 
-- update membera set pw=?, tel=?, email=? where id=?;
-- pstmt.setString(1, pw);
-- pstmt.setString(2, tel);
-- pstmt.setString(3, email);
-- pstmt.setString(4, id);

-- 회원 탈퇴
delete from membera where id='keg';
-- delete from membera where id=?;
-- pstmt.setString(1, id);


select * from boarda order by resdate;



