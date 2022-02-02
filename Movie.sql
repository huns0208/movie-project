create table Event (
    eseq number(5) not null, -- event �Խñ� ��ȣ
    name varchar2(100) not null, -- title
    eventkind char(1) not null, -- Special,��ȭ/����,�����/CLUB,CGV���庰,����/���� Category ����
    image varchar2(100) default 'default.jpg', -- event �̹��� ���
    filmview varchar2(100), -- �̸����� ���� ���(�������)
    content varchar2(4000) not null, -- event����
    nfilm char(1), -- ���� ��ϵ� New flim yes/no üũ >> 1����ȭ ������ºκп� ���
    indate date default sysdate, -- �����
    sdate date, -- event ������
    fdate date, -- event ������
    finish char(1) default 'N', -- ����� �̺�Ʈ yes/noüũ
    CONSTRAINT movie_pk primary key (eseq)
);
create sequence eseq_seq;

create table EventWinner (
    wseq number(5) not null, -- ��÷�� ��ǥ �Խù� ��ȣ
    name varchar2(100) not null, -- title
    eventkind char(1) not null, -- �̺�ƮŸ�� ����
    content varchar2(4000) not null, -- ��÷������ ����
    winner varchar2(4000) not null, -- ��÷�� ��� >> member table�� ��÷�����߰� �ʿ�
    indate date default sysdate, -- �����
    sdate date, -- event ������ >> event���̺� join�� ���� ����
    fdate date, -- event ������ >> event���̺� join�� ���� ����
    CONSTRAINT winner_pk primary key (wseq)
);

create sequence wseq_seq;

