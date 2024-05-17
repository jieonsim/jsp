show tables;

create table board(
	idx int not null auto_increment,  /*게시글의 고유번호 */
	mid varchar(20) not null, /*게시글 작성자 아이디 */
	nickName varchar(20) not null, /* 게시글 작성자 닉네임 */
	title varchar(100) not null, /*게시글 제목 */
	content text not null, /*글 내용 */
	readNum int default 0, /*글 조회 수 */
	hostIp varchar(40) not null, /*글 올린이 IP*/
	openSw char(2) default 'OK', /*게시글 공개여부(OK:공개, NO: 비공개) */
	wDate datetime default now(), /*작성일자*/
	good int default 0, /* '좋아요' 클릭 횟수 누적 */
	complaint char(2) default 'NO', /*신고글 유무(신고당한 글은 OK가 됨, 정상적인 글은 NO) <<= 추가되는 필드는 */
	primary key(idx), /*기본키 : 고유번호 */
	foreign key(mid) references member(mid)
);

drop table board;

desc board;

insert into board values(default, 'admin', '관리맨', '게시판 서비스를 시작합니다.', '하이루 게시판 굿굿', default, '192.168.50.61', default, default, default);

/*댓글달기*/
create table boardReply (
	idx int not null auto_increment,	/*댓글 고유번호*/
	boardIdx int not null, 				/*원본글(부모글)의 고유번호-외래키로 지정*/
	mid	varchar(20) not null,			/*댓글 올린이의 아이디 */
	nickName varchar(20) not null,		/*댓글 올린이의 닉네임*/
	wDate datetime default now(),		/*댓글 올린 날짜/시간 */
	hostIp	varchar(50) not null,		/*댓글 올린 pc의 고유 ip */
	content text not null,				/*댓글 내용*/
	primary key(idx),
	foreign key(boardIdx) references board(idx)
	on update cascade
	on delete restrict
);

desc boardReply;

insert into boardReply values(default, 26, 'jojo123', '조조', default, '192.168.50.12', '댓글달기 오호홍 글을 참조했음');
insert into boardReply values(default, 24, 'jojo123', '조조', default, '192.168.50.12', '하이염');
insert into boardReply values(default, 27, 'admin', '관리맨', default, '192.168.50.12', '우미관 초밥 우우 별루');

select * from boardReply;
select * from board;
select * from board where idx = 9; /*현재글*/
select idx, title from board where idx > 9 order by idx limit 1; /*다음글*/
select idx, title from board where idx < 9 order by idx desc limit 1; /*이전글*/

-- 시간으로 비교하여 필드가 값 저장하기
select *, timestampdiff(hour, wDate, now()) as hour_diff from board;
select *, timestampdiff(hour, wDate, now()) as hour_diff from board order by idx desc;

-- 날짜로 비교해서 필드에 값 저장하기
select *, datediff(wDate, now()) as date_diff from board;
select *, datediff(wDate, now()) as date_diff from board order by idx desc;


-- 관리자는 모든글 보여주고, 일반사용자는 비공개글(openSw='NO')과 신고글(complaint='OK')은 볼수없다. 단, 자신이 작성한 글은 볼수 있다.
select count(*) as cnt from board;
select count(*) as cnt from board where openSW = 'OK' and complaint = 'NO';
select count(*) as cnt from board where mid = 'jojo123';

select * from board where openSW = 'OK' and complaint = 'NO';
select * from board where mid = 'jojo123';
select * from board where openSW = 'OK' and complaint = 'NO' union select * from board where mid = 'jojo123';
select * from board where openSW = 'OK' and complaint = 'NO' union all select * from board where mid = 'jojo123';

select count(*) as cnt from board where openSW = 'OK' and complaint = 'NO' union select count(*) as cnt from board where mid = 'jojo123';
select sum(a.cnt) from (select count(*) as cnt from board where openSW = 'OK' and complaint = 'NO' union select count(*) as cnt from board where mid = 'jojo123') as a;
select sum(a.cnt) from (select count(*) as cnt from board where openSW = 'OK' and complaint = 'NO' union select count(*) as cnt from board where mid = ?) as a;

select sum(a.cnt) from (select count(*) as cnt from board where openSW = 'OK' and complaint = 'NO' union select count(*) as cnt from board where mid = 'jojo123' and (openSW = 'NO' or complaint = 'OK')) as a;

select * from board where openSW = 'OK' and complaint = 'NO' union select * from board where mid = 'jojo123' order by idx desc;

/*댓글 수 연습*/
select * from board order by idx desc;
select * from boardReply order by boardIdx, idx desc;

-- 부모글(27)의 댓글만 출력
select * from boardReply where boardIdx = 27;
select boardIdx, count(*) as replyCnt from boardReply where boardIdx = 27;

select * from board where idx = 27;
select *,(select count(*) as replyCnt from boardReply where boardIdx = 27) as replyCnt from board where idx = 27;
select *,(select count(*) as replyCnt from boardReply where boardIdx = b.idx) as replyCnt from board b;


/*view / index 파일 연습 */
select * from board where mid = 'admin';

create view adminView as select * from board where mid = 'admin';

select * from adminView;

show tables;

show full tables in javaclass where table_type like 'view';

drop view adminView;

desc board;

create index nickNameIndex on board(nickName);

show index from board;

alter table board drop index nickNameIndex;




