show tables;

/*신고테이블(complaint)*/
create table complaint(
	idx int not null auto_increment,	/*신고테이블 고유번호*/
	part varchar(15) not null,			/*신고 분류(게시판:board, 자료실:pds, 방명록:guest)*/
	partIdx int not null,				/*신고 분류 항목 글의 고유번호 */
	cpMid varchar(20) not null,			/*신고자 아이디*/
	cpContent text not null,			/*신고 사유*/
	cpDate datetime default now(),		/*신고한 날짜*/
	primary key(idx)
);

desc complaint;

insert into complaint values (default, 'board', 6, 'jojo123', '광고성 글', default);

select * from complaint;

select c.*, b.title, b.nickName, b.mid from complaint c, board b where c.partIdx = b.idx;

select c.*, b.title as title, b.nickName as nickName, b.mid as mid from complaint c, board b where c.partIdx = b.idx;

select c.*, date_format(c.cpDate, '%Y-%m-%d %H:%i') as cpDate, b.title as title, b.nickName as nickName, b.mid as mid from complaint c, board b where c.partIdx = b.idx;

select c.*, date_format(c.cpDate, '%Y-%m-%d %H:%i') as cpDate, b.title as title, b.nickName as nickName, b.mid as mid from complaint c, board b where c.partIdx = b.idx order by idx desc;


/*리뷰 테이블*/
create table review(
	idx int not null auto_increment comment '리뷰 고유번호',
	part varchar(20) not null comment '분야', /*게시판:board, 자료실: pds 등*/
	partIdx int not null comment '해당 분야의 고유번호',
	mid varchar(20) not null comment '리뷰 작성자 이름',
	nickName varchar(20) not null comment '리뷰 작성자 닉네임',
	star int not null default 0 comment '별점',
	content text comment '리뷰',
	rDate datetime default now() comment '리뷰 등록일자',
	primary key(idx),
	foreign key(mid) references member(mid)
);

desc reviewReply;



/* 리뷰에 댓글 달기 */
create table reviewReply(
  replyIdx    		int not null auto_increment,/* 댓글의 고유번호 */
  reviewIdx	int not null,								/* 원본글(부모글:리뷰)의 고유번호(외래키로 설정) */
  replyMid			varchar(20) not null,		/* 댓글 올린이의 아이디 */
  replyNickName	varchar(20) not null,		/* 댓글 올린이의 닉네임 */
  replyRDate		datetime default now(),	/* 댓글 올린 날짜 */
  replyContent	text not null,					/* 댓글 내용 */
  primary key(replyIdx),
  foreign key(reviewIdx) references review(idx),
  foreign key(replyMid) references member(mid)
);

drop table reviewReply;

select * from review order by idx desc;
select * from review where partIdx=10;

select * from reviewReply order by replyIdx desc;


select * from review v, reviewReply r where v.partIdx=10 and v.idx=r.reviewIdx;
select * from review v, reviewReply r where v.partIdx=10 and v.idx=r.reviewIdx order by v.idx desc, r.replyIdx desc;
select * from review v left join reviewReply r on v.partIdx=10 and v.idx=r.reviewIdx order by v.idx desc, r.replyIdx desc;
select * from (select * from review where partIdx=10) as v left join reviewReply r on v.partIdx=10 and v.idx=r.reviewIdx order by v.idx desc, r.replyIdx desc;
select * from (select * from review where partIdx=10) as v left join reviewReply r on v.partIdx=10 and v.idx=r.reviewIdx order by v.idx desc, r.replyIdx desc