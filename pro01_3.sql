create table faqa(
no number primary key, 
title varchar2(100) not null,
content varchar2(600),
author varchar2(16),
resdate date default sysdate,
gubun number not null,	-- 질문(0), 답변(1) 구분
parno number not null); -- (1)질문과 (1)답변과 짝

create sequence fseq increment by 1 start with 1;

insert into faqa values(fseq.nextval, '1번질문', '1번질문 블라블라', 'keg', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '2번질문', '2번질문 블라블라', 'keg', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '3번질문', '3번질문 블라블라', 'keg', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '4번질문', '4번질문 블라블라', 'keg', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '5번질문', '5번질문 블라블라', 'keg', sysdate, 0, fseq.currval);

insert into faqa values(fseq.nextval, '1번답변', '1번답변 블라블라', 'keg', sysdate, 1, 1);
insert into faqa values(fseq.nextval, '2번답변', '2번답변 블라블라', 'keg', sysdate, 1, 2);
insert into faqa values(fseq.nextval, '3번답변', '3번답변 블라블라', 'keg', sysdate, 1, 3);
insert into faqa values(fseq.nextval, '4번답변', '4번답변 블라블라', 'keg', sysdate, 1, 4);
insert into faqa values(fseq.nextval, '5번답변', '5번답변 블라블라', 'keg', sysdate, 1, 5);

select * from faqa order by parno asc, gubun asc;
select * from faqa;

-- 질문 등록
-- insert into faqa values (fseq.nextval, '?', '?', 'keg', sysdate, 0, fseq.currval);
-- 답변 등록
-- insert into faqa values (fseq.nextval, '?', '?', 'keg', sysdate, 1, ?);

-- 글 수정
-- update faqa set title=?, content=? where no=?;

-- 질문 및 답변 삭제
-- delete from faqa where parno=?
delete from faqa where parno=16;
select fseq.currval from dual;

drop table faqa;
drop sequence fseq;


