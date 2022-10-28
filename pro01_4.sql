create table qnaa(
no number primary key,
title varchar2(100) not null,
content varchar2(1000) not null,
author varchar2(20) not null,
resdate date not null,
lev number not null,	-- 질문(0), 답변(1)
parno number not null,	-- 부모글 번호
sec char(1));			-- 비밀글 유무 Y:비밀글, N:

select * from qnaa;

create sequence qseq increment by 1 start with 1;

insert into qnaa values(qseq.nextval, '문의1', '문의1 내용 블라블라', 'kei', sysdate, 0, qseq.currval, 'Y');
insert into qnaa values(qseq.nextval, '문의2', '문의2 내용 블라블라', 'keg', sysdate, 0, qseq.currval, 'N');
insert into qnaa values(qseq.nextval, '문의3', '문의3 내용 블라블라', 'keb', sysdate, 0, qseq.currval, 'N');
insert into qnaa values(qseq.nextval, '문의4', '문의4 내용 블라블라', 'kec', sysdate, 0, qseq.currval, 'N');
insert into qnaa values(qseq.nextval, '문의5', '문의5 내용 블라블라', 'keg', sysdate, 0, qseq.currval, 'Y');
insert into qnaa values(qseq.nextval, '문의6', '문의6 내용 블라블라', 'keg', sysdate, 0, qseq.currval, 'N');

insert into qnaa values(qseq.nextval, '문의 답변1', '문의1 답변 블라블라', 'keg', sysdate, 1, 1, 'Y');
insert into qnaa values(qseq.nextval, '문의 답변2', '문의2 답변 블라블라', 'keg', sysdate, 1, 2, 'Y');
insert into qnaa values(qseq.nextval, '문의 답변3', '문의3 답변 블라블라', 'keg', sysdate, 1, 3, 'Y');
insert into qnaa values(qseq.nextval, '문의 답변4', '문의4 답변 블라블라', 'keg', sysdate, 1, 4, 'Y');
insert into qnaa values(qseq.nextval, '문의 답변5', '문의5 답변 블라블라', 'keg', sysdate, 1, 5, 'Y');
insert into qnaa values(qseq.nextval, '문의 답변6', '문의6 답변 블라블라', 'keg', sysdate, 1, 6, 'Y');

-- 질문 및 답변 목록
select * from qnaa order by parno desc, lev asc, no asc;

-- 질문 및 내용 상세 보기
-- select * from qnaa where no=?

-- 질문하기
-- insert into qnaa values (qseq.nextval, ?, ?, ?, sysdate, 0, qseq.currval, ?);

-- 답변하기
-- insert into qnaa values (qseq.nextval, ?, ?, 'keg', sysdate, 1, ?, ?);

-- 질문 및 답변 수정하기
-- update qnaa set title=?, content=?,resdate=sysdate where no=?;

-- 질문 삭제하기
-- DELETE from qnaa where parno=?;

-- 답변 삭제하기
-- DELETE from qnaa where no=?;

commit;
