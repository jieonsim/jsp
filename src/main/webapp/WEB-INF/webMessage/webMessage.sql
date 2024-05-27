show tables;

create table WebMessage(
	idx int not null auto_increment comment '메시지 고유번호',
	title varchar(100) not null comment '메시지 제목',
	content text not null comment '메시지 내용',
	sendId varchar(20) not null comment '보내는 사람 아이디',
	sendSw char(1) not null default 's' comment '보낸 메시지(s), 휴지통(g), 휴지통삭제(x) 표시',
	sendDate datetime default now() comment '메시지 보낸 날짜',
	receiveId varchar(20) not null comment '받는 사람 아이디',
	receiveSw char(1) not null default 'n' comment '받은 메시지(n), 읽은 메시지(r), 휴지통(g), 휴지통삭제(x) 표시',
	receiveDate datetime default now() comment '메시지 받은 날짜 / 읽은 날짜',
	primary key(idx),
	foreign key(sendId) references member(mid),
	foreign key(receiveId) references member(mid)
);


drop table webMessage;
desc webMessage;

insert into webMessage values (default, '안녕하세요~!', '잘 지내시나요? 전 잘 지내요', 'zizi', default, default, 'jojo123', 'r', default);
insert into webMessage values (default, '하잉', '난 잘 지내지 너는', 'jojo123', default, default, 'zizi', 'r', default);
insert into webMessage values (default, '회원가입 축하합니다.', '반가워요', 'admin', default, default, 'jojo123', 'r', default);
insert into webMessage values (default, '관리자님 안녕하세요', '반갑습니다~', 'jojo123', default, default, 'admin', 'r', default);
insert into webMessage values (default, '뿌뿌', '뭐하니이이ㅣ', 'zizi', default, default, 'jojo123', 'r', default);
insert into webMessage values (default, '침대 뒹굴뒹굴', '하암 자고싶다', 'jojo123', default, default, 'zizi', 'r', default);
insert into webMessage values (default, '오늘 뭐할거야 ㅋㅋ', '난 프로젝트 ㅜㅜ', 'zizi', default, default, 'jojo123', default, default);
insert into webMessage values (default, '점심은 뭐먹니', '뭐를 먹어야하나~~', 'jojo123', default, default, 'zizi', 'r', default);
insert into webMessage values (default, '응응??', '뭐를 먹어야하나고', 'jojo123', default, default, 'zizi', default, default);

select * from webMessage;


select *,timestampdiff(hour, sendDate, now()) as hour_diff from webMessage where receiveId='jojo123' and (receiveSw='n' or receiveSw='r') order by idx desc;