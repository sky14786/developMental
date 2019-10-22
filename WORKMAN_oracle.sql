select * from tab;

SELECT * FROM APPLY_JOB;
SELECT * FROM APPLY_MEETUP;
SELECT * FROM BOARD_FREE;
SELECT * FROM BOARD_JOB;
SELECT * FROM BOARD_MEETUP;
SELECT * FROM BOARD_QNA;
SELECT * FROM COLLABO_CARD;
SELECT * FROM COLLABO_LIST;
SELECT * FROM COLLABO_MEMBER;
SELECT * FROM COLLABO_TOOL;
SELECT * FROM FILE_BOARD_FREE;
SELECT * FROM FILE_BOARD_JOB;
SELECT * FROM FILE_BOARD_MEETUP;
SELECT * FROM FILE_BOARD_QNA;
SELECT * FROM HASHTAG;
SELECT * FROM HASHTAG_FREE;
SELECT * FROM HASHTAG_JOB;
SELECT * FROM HASHTAG_MEETUP;
SELECT * FROM HASHTAG_QNA;
SELECT * FROM MEMBER;
SELECT * FROM QNA_CATEGORY;

COMMENT ON COLUMN APPLY_JOB.boardNo IS '게시판번호 FK';
COMMENT ON COLUMN APPLY_JOB.memberNo IS '회원번호 FK';
COMMENT ON COLUMN APPLY_JOB.resume IS '이력서';
COMMENT ON COLUMN APPLY_JOB.intro IS '자기소개';

COMMENT ON COLUMN BOARD_JOB.no IS '게시판번호 PK';
COMMENT ON COLUMN BOARD_JOB.writer IS '회원번호 FK';
COMMENT ON COLUMN BOARD_JOB.title IS '제목';
COMMENT ON COLUMN BOARD_JOB.content IS '글내용';
COMMENT ON COLUMN BOARD_JOB.regDate IS '작성일';
COMMENT ON COLUMN BOARD_JOB.count IS '조회수';
COMMENT ON COLUMN BOARD_JOB.status IS '게시글 상태(1, 0, -1)';

COMMENT ON COLUMN FILE_BOARD_JOB.BOARDNO IS '게시판번호 FK';
COMMENT ON COLUMN FILE_BOARD_JOB.ORGNAME IS '첨부파일 원래이름';
COMMENT ON COLUMN FILE_BOARD_JOB.NEWNAME IS '첨부파일 바뀐이름';

COMMENT ON COLUMN HASHTAG_JOB.BOARDNO IS '게시판번호 FK';
COMMENT ON COLUMN HASHTAG_JOB.HASHTAGNO IS '해시태그번호 FK';

select * from apply_job;
delete from apply_job;
commit;

select * from board_job;
delete from board_job;
commit;

select * from file_board_job;
delete from file_board_job;
commit;

select * from hashtag_job;
delete from hashtag_job;
commit;
