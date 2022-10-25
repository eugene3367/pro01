insert into memberA values('keg','1234','고유진','keg@naver.com','010-1111-1111','2022-10-23');
insert into memberA values('kea','123a','고유a','kea@naver.com','010-1111-111a',sysdate);
insert into memberA values('keb','123b','고유b','keb@naver.com','010-1111-111b',sysdate);
insert into memberA values('kec','123c','고유c','kec@naver.com','010-1111-111c',sysdate);
insert into memberA values('ked','123d','고유d','ked@naver.com','010-1111-111d',sysdate);
insert into memberA values('kee','123e','고유e','kee@naver.com','010-1111-111e',sysdate);

select * from boarda;
desc boarda;

select * from membera;
desc membera;

create sequence bseq increment by 1 start with 1;

insert into boarda values(bseq.nextval,'글제목keg','글내용글내용글내용입니다keg','keg',sysdate);
insert into boarda values(bseq.nextval,'글제목a','글내용글내용글내용입니다a','kea',sysdate);
insert into boarda values(bseq.nextval,'글제목b','글내용글내용글내용입니다b','keb',sysdate);
insert into boarda values(bseq.nextval,'글제목c','글내용글내용글내용입니다c','kec',sysdate);
insert into boarda values(bseq.nextval,'글제목d','글내용글내용글내용입니다d','ked',sysdate);
insert into boarda values(bseq.nextval,'글제목e','글내용글내용글내용입니다e','kee',sysdate);
insert into boarda values(bseq.nextval,'글제목f','글내용글내용글내용입니다f','keb',sysdate);
insert into boarda values(bseq.nextval,'글제목g','글내용글내용글내용입니다g','kec',sysdate);
insert into boarda values(bseq.nextval,'글제목h','글내용글내용글내용입니다h','kea',sysdate);