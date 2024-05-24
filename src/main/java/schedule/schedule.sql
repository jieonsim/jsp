show tables;

create table schedule (
	idx int not null auto_increment comment '스케줄 고유번호',
	mid varchar(20) not null comment '회원 아이디(일정 검색 시 필요)',
	sDate datetime not null comment '일정 등록 날짜',
	part varchar(10) not null comment '일정분류(1.모임, 2.업무, 3.학습, 4.여행, 5.기타)',
	content text not null comment '일정 상세 내역',
	primary key(idx),
	foreign key(mid) references member(mid)
);

desc schedule;

insert into schedule values(default, 'jojo123', '2024-05-13', '여행', '부산여행');
insert into schedule values(default, 'zizi', '2024-05-18', '학습', '프로젝트 기획');
insert into schedule values(default, 'jojo123', '2024-05-20', '기타', '가족식사');
insert into schedule values(default, 'jojo123', '2024-05-20', '학습', '영어공부');
insert into schedule values(default, 'zizi', '2024-05-14', '모임', '초등학교동창회');
insert into schedule values(default, 'jojo123', '2024-05-14', '모임', '초등학교동창회');
insert into schedule values(default, 'jojo123', '2024-05-23', '업무', '기획팀 5월 정기총회');
insert into schedule values(default, 'admin', '2024-05-09', '업무', '소득세 신고서 작성');
insert into schedule values(default, 'admin', '2024-05-06', '학습', '프로젝트 개발');
insert into schedule values(default, 'jojo123', '2024-06-01', '모임', '온라인 독서모임');
insert into schedule values(default, 'jojo123', '2024-06-30', '학습', '구몬학습');
insert into schedule values(default, 'jojo123', '2024-06-15', '업무', '보고서 작성');
insert into schedule values(default, 'zizi', '2024-06-06', '여행', '제주나들이');
insert into schedule values(default, 'zizi', '2024-06-07', '여행', '제주나들이');
insert into schedule values(default, 'jojo123', '2024-06-05', '업무', '프로젝트 발표');
insert into schedule values(default, 'jojo123', '2024-05-24', '기타', '치과예약');
insert into schedule values(default, 'jojo123', '2024-05-24', '학습', '구몬숙제');
insert into schedule values(default, 'jojo123', '2024-05-24', '학습', '영어숙제');
insert into schedule values(default, 'zizi', '2024-06-07', '여행', '제주나들이');

select * from schedule where mid = 'jojo123' and substring(sDate,1,10) = '2024-05-14' order by sDate;
select * from schedule where mid = 'jojo123' and date_format(sDate, '%Y-%m-%d') = '2024-05-24' order by sDate;
select *,count(*) as cnt from schedule where mid = 'jojo123' and date_format(sDate, '%Y-%m') = '2024-05' group by sDate order by sDate, part;
select *,count(*) as cnt from schedule where mid = 'jojo123' and date_format(sDate, '%Y-%m') = '2024-05' group by sDate, part order by sDate, part;

select *,count(*) as cnt from schedule where mid = 'jojo123' and date_format(sDate, '%Y-%m') = '2024-05' order by sDate, part;

select * from schedule where mid = 'jojo123' and date_format(sDate, '%Y-%m-%d') = '2024-05-24' order by sDate, part;
select *,count(*) as cnt from schedule where mid 
= 'jojo123' and date_format(sDate, '%Y-%m-%d') = '2024-05-24' order by sDate, part;
select *,count(*) as cnt from schedule where mid = 'jojo123' and date_format(sDate, '%Y-%m-%d') = '2024-05-24' group by part order by sDate, part;



select *,count(*) as partCnt from schedule where mid = 'jojo123' and date_format(sDate, '%Y-%m') = '2024-05' group by sDate, part order by sDate, part;