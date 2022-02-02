create table Event (
    eseq number(5) not null, -- event 게시글 번호
    name varchar2(100) not null, -- title
    eventkind char(1) not null, -- Special,영화/예매,멤버십/CLUB,CGV극장별,제휴/할인 Category 선택
    image varchar2(100) default 'default.jpg', -- event 이미지 등록
    filmview varchar2(100), -- 미리보기 영상 등록(경로지정)
    content varchar2(4000) not null, -- event내용
    nfilm char(1), -- 새로 등록된 New flim yes/no 체크 >> 1개영화 랜덤출력부분에 사용
    indate date default sysdate, -- 등록일
    sdate date, -- event 시작일
    fdate date, -- event 종료일
    finish char(1) default 'N', -- 종료된 이벤트 yes/no체크
    CONSTRAINT movie_pk primary key (eseq)
);
create sequence eseq_seq;

create table EventWinner (
    wseq number(5) not null, -- 당첨자 발표 게시물 번호
    name varchar2(100) not null, -- title
    eventkind char(1) not null, -- 이벤트타입 선택
    content varchar2(4000) not null, -- 당첨페이지 내용
    winner varchar2(4000) not null, -- 당첨자 명단 >> member table에 당첨여부추가 필요
    indate date default sysdate, -- 등록일
    sdate date, -- event 시작일 >> event테이블 join시 삭제 예정
    fdate date, -- event 종료일 >> event테이블 join시 삭제 예정
    CONSTRAINT winner_pk primary key (wseq)
);

create sequence wseq_seq;

