/* Drop Tables */

DROP TABLE IF EXISTS T_CM_DEPT;

/* Create Tables */

-- 부서
CREATE TABLE T_CM_DEPT
(
	DEPT_CD varchar(20) NOT NULL,			    -- 부서코드
	DEPT_NM varchar(200) NOT NULL,			    -- 부서명
	DEPT_DC VARCHAR(2000),					    -- 부서설명
	USE_YN CHAR(1),							    -- 사용여부
	REGIST_ID varchar(50),					    -- 등록아이디
	REGIST_DT timestamp,					    -- 등록일시
	MODIFY_ID varchar(50),					    -- 수정아이디
	MODIFY_DT timestamp,					    -- 수정일시
	CONSTRAINT PK_T_CM_DEPT PRIMARY KEY (DEPT_CD)
) WITHOUT OIDS;

COMMENT ON TABLE T_CM_DEPT IS '부서';
COMMENT ON COLUMN T_CM_DEPT.DEPT_CD IS '부서코드';
COMMENT ON COLUMN T_CM_DEPT.DEPT_DC IS '부서설명';
COMMENT ON COLUMN T_CM_DEPT.USE_YN IS '사용여부';
COMMENT ON COLUMN T_CM_DEPT.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_CM_DEPT.REGIST_DT IS '등록일시';
COMMENT ON COLUMN T_CM_DEPT.MODIFY_ID IS '수정아이디';
COMMENT ON COLUMN T_CM_DEPT.MODIFY_DT IS '수정일시';

DROP TABLE IF EXISTS T_CM_CD_GRP;
-- 공통코드그룹
CREATE TABLE T_CM_CD_GRP
(
	GRP_CD varchar(20) NOT NULL,				-- 그룹코드
	GRP_CD_NM varchar(200) NOT NULL,			-- 그릅코드명
	TABLE_NM varchar(200),						-- 테이블명
	COLUMN_NM varchar(200),						-- 컬럼명
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	CONSTRAINT PK_T_CM_CD_GRP PRIMARY KEY (GRP_CD)
) WITHOUT OIDS;

COMMENT ON TABLE T_CM_CD_GRP IS '공통코드그룹';
COMMENT ON COLUMN T_CM_CD_GRP.GRP_CD IS '그룹코드';
COMMENT ON COLUMN T_CM_CD_GRP.GRP_CD_NM IS '그릅코드명';
COMMENT ON COLUMN T_CM_CD_GRP.TABLE_NM IS '테이블명';
COMMENT ON COLUMN T_CM_CD_GRP.COLUMN_NM IS '컬럼명';
COMMENT ON COLUMN T_CM_CD_GRP.USE_YN IS '사용여부';
COMMENT ON COLUMN T_CM_CD_GRP.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_CM_CD_GRP.REGIST_DT IS '등록일시';
COMMENT ON COLUMN T_CM_CD_GRP.MODIFY_ID IS '수정아이디';
COMMENT ON COLUMN T_CM_CD_GRP.MODIFY_DT IS '수정일시';

-- 공통코드
CREATE TABLE T_CM_CD
	GRP_CD varchar(20) NOT NULL,				-- 그룹코드
	CD varchar(20) NOT NULL,					-- 코드
	CD_NM varchar(200) NOT NULL,				-- 코드명
	CD_DC VARCHAR(2000),						-- 코드설명		
	SORT_ORDR numeric,							-- 정렬순서
	CD_ATRB1 VARCHAR(100),						-- 코드속성1
	CD_ATRB2 VARCHAR(100),						-- 코드속성2
	CD_ATRB3 VARCHAR(100),						-- 코드속성3
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_CM_CD PRIMARY KEY (GRP_CD, CD)
) WITHOUT OIDS;

COMMENT ON TABLE T_CM_CD IS '공통코드';
COMMENT ON COLUMN T_CM_CD.GRP_CD IS '그룹코드';
COMMENT ON COLUMN T_CM_CD.CD_NM IS '코드';
COMMENT ON COLUMN T_CM_CD.CD_NM IS '코드명';
COMMENT ON COLUMN T_CM_CD.CD_DC IS '코드설명';
COMMENT ON COLUMN T_CM_CD.SORT_ORDR IS '정렬순서';
COMMENT ON COLUMN T_CM_CD.CD_ATRB1 IS '코드속성1';
COMMENT ON COLUMN T_CM_CD.CD_ATRB2 IS '코드속성2';
COMMENT ON COLUMN T_CM_CD.CD_ATRB3 IS '코드속성3';
COMMENT ON COLUMN T_CM_CD.USE_YN IS '사용여부';
COMMENT ON COLUMN T_CM_CD.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_CM_CD.REGIST_DT IS '등록일시';
COMMENT ON COLUMN T_CM_CD.MODIFY_ID IS '수정아이디';
COMMENT ON COLUMN T_CM_CD.MODIFY_DT IS '수정일시';

-- 사용자
CREATE TABLE T_CM_USER
(
	USER_ID varchar(50) NOT NULL,				-- 사용자아이디
	USER_NM varchar(200) NOT NULL,				-- 사용자명
	DEPT_CD varchar(20) NOT NULL,				-- 부서코드
	PWD varchar(100),							-- 비밀번호
	PWD_SALT varchar(20),						-- 비밀번호SALT	
	AUTHOR_GRP_CD varchar(20) NOT NULL,			-- 권한그룹코드	
	TELNO VARCHAR(11),							--전화번호
	FRST_LOGIN_DT  timestamp,					-- 최초로그인일시
	LAST_LOGIN_DT timestamp,					-- 최종로그인일시
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	CONSTRAINT PK_T_CM_USER PRIMARY KEY (USER_ID)
) WITHOUT OIDS;

COMMENT ON TABLE T_CM_USER IS '사용자';
COMMENT ON COLUMN T_CM_USER.USER_ID IS '사용자아이디';
COMMENT ON COLUMN T_CM_USER.USER_NM IS '사용자명';
COMMENT ON COLUMN T_CM_USER.DEPT_CD IS '부서코드';
COMMENT ON COLUMN T_CM_USER.PWD IS '비밀번호';
COMMENT ON COLUMN T_CM_USER.PWD_SALT IS '비밀번호SALT';
COMMENT ON COLUMN T_CM_USER.AUTHOR_GRP_CD IS '권한그룹코드';
COMMENT ON COLUMN T_CM_USER.TELNO IS '전화번호';
COMMENT ON COLUMN T_CM_USER.FRST_LOGIN_DT IS '최초로그인일시';
COMMENT ON COLUMN T_CM_USER.LAST_LOGIN_DT IS '최종로그인일시';
COMMENT ON COLUMN T_CM_USER.USE_YN IS '사용여부';
COMMENT ON COLUMN T_CM_USER.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_CM_USER.REGIST_DT IS '등록일시';
COMMENT ON COLUMN T_CM_USER.MODIFY_ID IS '수정아이디';
COMMENT ON COLUMN T_CM_USER.MODIFY_DT IS '수정일시';


-- 권한그룹
CREATE TABLE T_CM_AUTHOR_GRP
(
	AUTHOR_GRP_CD varchar(20) NOT NULL,			-- 권한그룹코드
	AUTHOR_GRP_NM varchar(200) NOT NULL,		-- 권한그릅명
	AUTHOR_CN 	  VARCHAR(1000),				-- 권한내용
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_CM_GRP PRIMARY KEY (AUTHOR_GRP_CD)
) WITHOUT OIDS;

COMMENT ON TABLE T_CM_AUTHOR_GRP IS '권한그룹';
COMMENT ON COLUMN T_CM_AUTHOR_GRP.AUTHOR_GRP_CD IS '권한그룹코드';
COMMENT ON COLUMN T_CM_AUTHOR_GRP.AUTHOR_GRP_NM IS '권한그릅명';
COMMENT ON COLUMN T_CM_AUTHOR_GRP.AUTHOR_CN 	  IS '권한내용';
COMMENT ON COLUMN T_CM_AUTHOR_GRP.USE_YN IS '사용여부';
COMMENT ON COLUMN T_CM_AUTHOR_GRP.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_CM_AUTHOR_GRP.REGIST_DT IS '등록일시';
COMMENT ON COLUMN T_CM_AUTHOR_GRP.MODIFY_ID IS '수정아이디';
COMMENT ON COLUMN T_CM_AUTHOR_GRP.MODIFY_DT IS '수정일시';

-- 메뉴
CREATE TABLE T_CM_MENU
(
	MENU_ID 		varchar(50) NOT NULL,				-- 메뉴아이디
	MENU_NM 		varchar(200) NOT NULL,				-- 메뉴명
	UPPER_MENU_ID 	VARCHAR(50),					-- 상위메뉴아이디
	SYS_SE 			VARCHAR(5),							-- 시스템구분
	MENU_URL 		VARCHAR(200),						-- 메뉴URL
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_CM_MENU PRIMARY KEY (MENU_ID)
) WITHOUT OIDS;

COMMENT ON TABLE T_CM_MENU IS '메뉴';
COMMENT ON COLUMN T_CM_MENU.MENU_ID 		 IS '메뉴아이디';
COMMENT ON COLUMN T_CM_MENU.MENU_NM 		 IS '메뉴명';
COMMENT ON COLUMN T_CM_MENU.UPPER_MENU_ID 	 IS '상위메뉴아이디';
COMMENT ON COLUMN T_CM_MENU.SYS_SE 			 IS '시스템구분';
COMMENT ON COLUMN T_CM_MENU.MENU_URL 		 IS '메뉴URL';
COMMENT ON COLUMN T_CM_MENU.USE_YN IS '사용여부';
COMMENT ON COLUMN T_CM_MENU.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_CM_MENU.REGIST_DT IS '등록일시';
COMMENT ON COLUMN T_CM_MENU.MODIFY_ID IS '수정아이디';
COMMENT ON COLUMN T_CM_MENU.MODIFY_DT IS '수정일시';

-- 부서권한
CREATE TABLE T_CM_DEPT_AUTHOR
(
	MENU_ID varchar(50) NOT NULL,				-- 메뉴아이디
	AUTHOR_GRP_CD varchar(20) NOT NULL,			-- 권한그룹코드
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_CM_DEPT_AUTHOR PRIMARY KEY (MENU_ID,AUTHOR_GRP_CD)
) WITHOUT OIDS;

COMMENT ON TABLE T_CM_DEPT_AUTHOR IS '부서권한';
COMMENT ON COLUMN T_CM_DEPT_AUTHOR.MENU_ID 		 IS '메뉴아이디';
COMMENT ON COLUMN T_CM_DEPT_AUTHOR.AUTHOR_GRP_CD 		 IS '권한그룹코드';
COMMENT ON COLUMN T_CM_DEPT_AUTHOR.USE_YN IS '사용여부';
COMMENT ON COLUMN T_CM_DEPT_AUTHOR.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_CM_DEPT_AUTHOR.REGIST_DT IS '등록일시';
COMMENT ON COLUMN T_CM_DEPT_AUTHOR.MODIFY_ID IS '수정아이디';
COMMENT ON COLUMN T_CM_DEPT_AUTHOR.MODIFY_DT IS '수정일시';


-- 공통파일
CREATE TABLE T_CM_FILE
(
	FILE_SN 	 serial NOT NULL,					-- 파일일련번호
	TABLE_NM 	 varchar(200) NOT NULL,				-- 테이블명
	TABLE_SN 	 numeric,							-- 테이블일련번호
	ORGN_FILE_NM VARCHAR(200),					-- 원본파일명
	SAVE_FILE_NM VARCHAR(200),					-- 저장파일명
	FILE_PATH  	 VARCHAR(400),					-- 파일경로
	FILE_SIZE 	 numeric,							-- 파일크기
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_CM_FILE PRIMARY KEY (FILE_SN)
) WITHOUT OIDS;

COMMENT ON TABLE T_CM_FILE IS '공통파일';
COMMENT ON COLUMN T_CM_FILE.FILE_SN 	 IS '파일일련번호';
COMMENT ON COLUMN T_CM_FILE.TABLE_NM 	 IS '테이블명';
COMMENT ON COLUMN T_CM_FILE.TABLE_SN 	 IS '테이블일련번호';
COMMENT ON COLUMN T_CM_FILE.ORGN_FILE_NM IS '원본파일명';
COMMENT ON COLUMN T_CM_FILE.SAVE_FILE_NM IS '저장파일명';
COMMENT ON COLUMN T_CM_FILE.FILE_PATH  	 IS '파일경로';
COMMENT ON COLUMN T_CM_FILE.FILE_SIZE 	 IS '파일크기';
COMMENT ON COLUMN T_CM_FILE.USE_YN IS '사용여부';
COMMENT ON COLUMN T_CM_FILE.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_CM_FILE.REGIST_DT IS '등록일시';
COMMENT ON COLUMN T_CM_FILE.MODIFY_ID IS '수정아이디';
COMMENT ON COLUMN T_CM_FILE.MODIFY_DT IS '수정일시';


-- 접속로그
CREATE TABLE T_CM_LOG_ACC
(
	LOG_SN serial NOT NULL,						-- 로그일련번호
	CONECT_IP VARCHAR(100)  NOT NULL,			-- 접속IP	 	
	CONECT_DT timestamp,						-- 접속일시
	CONSTRAINT PK_T_CM_LOG_ACC PRIMARY KEY (LOG_SN)
) WITHOUT OIDS;

COMMENT ON TABLE T_CM_LOG_ACC IS '접속로그';
COMMENT ON COLUMN T_CM_LOG_ACC.LOG_SN 	 IS '로그일련번호';
COMMENT ON COLUMN T_CM_LOG_ACC.CONECT_IP	 IS '접속IP';
COMMENT ON COLUMN T_CM_LOG_ACC.CONECT_DT	 IS '접속일시';


-- 출력로그
CREATE TABLE T_CM_LOG_OUT
(
	LOG_SN 	serial NOT NULL,						-- 로그일련번호
	URL 	VARCHAR(200)  NOT NULL,					-- URL
	FILE_NM VARCHAR(200),						-- 파일명
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	CONSTRAINT PK_T_CM_LOG_OUT PRIMARY KEY (LOG_SN)
) WITHOUT OIDS;

COMMENT ON TABLE T_CM_LOG_OUT IS '출력로그';
COMMENT ON COLUMN T_CM_LOG_OUT.LOG_SN 	 IS '로그일련번호';
COMMENT ON COLUMN T_CM_LOG_OUT.URL 		 IS 'URL';
COMMENT ON COLUMN T_CM_LOG_OUT.FILE_NM	 IS '파일명';
COMMENT ON COLUMN T_CM_LOG_OUT.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_CM_LOG_OUT.REGIST_DT IS '등록일시';


-- 에러로그
CREATE TABLE T_CM_LOG_ERR
(
	LOG_SN serial NOT NULL,						-- 로그일련번호
	ERR_CN VARCHAR(1000)  NOT NULL,				-- 오류내용
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	CONSTRAINT PK_T_CM_LOG_OUT PRIMARY KEY (LOG_SN)
) WITHOUT OIDS;

COMMENT ON TABLE T_CM_LOG_OUT IS '에러로그';
COMMENT ON COLUMN T_CM_LOG_OUT.LOG_SN 	 IS '로그일련번호';
COMMENT ON COLUMN T_CM_LOG_OUT.ERR_CN 		 IS '오류내용';
COMMENT ON COLUMN T_CM_LOG_OUT.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_CM_LOG_OUT.REGIST_DT IS '등록일시';


-- 자산
CREATE TABLE T_AM_ASST
(
	ASST_SN 	serial NOT NULL,					-- 자산일련번호
	ASST_NM 	VARCHAR(200)  NOT NULL,				-- 자산명
	INSTALL_YMD CHAR(8)  NOT NULL,				-- 설치일	
	GEOM 		geometry,								-- GIS정보
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_AM_ASST PRIMARY KEY (ASST_SN)
) WITHOUT OIDS;

COMMENT ON TABLE T_AM_ASST IS '자산';
COMMENT ON COLUMN T_AM_ASST.ASST_SN 	 IS '자산일련번호';
COMMENT ON COLUMN T_AM_ASST.ASST_NM 	 IS '자산명';
COMMENT ON COLUMN T_AM_ASST.INSTALL_YMD  IS '설치일';
COMMENT ON COLUMN T_AM_ASST.GEOM 		 IS 'GIS정보';
COMMENT ON COLUMN T_AM_ASST.USE_YN IS '사용여부';
COMMENT ON COLUMN T_AM_ASST.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_AM_ASST.REGIST_DT IS '등록일시';
COMMENT ON COLUMN T_AM_ASST.MODIFY_ID IS '수정아이디';
COMMENT ON COLUMN T_AM_ASST.MODIFY_DT IS '수정일시';


-- 자산분류
CREATE TABLE T_AM_ASST_CL
(
	ASST_CL_SN 			serial NOT NULL,					-- 자산분류일련번호	
	UPPER_ASST_CL_SN 	numeric,					-- 상위자산분류일련번호
	ASST_CL_NM 			VARCHAR(200)  NOT NULL,			-- 자산분류명
	SORT_ORDR 			numeric,							-- 정렬순서	
	ASST_CL_DC 			VARCHAR(2000),					-- 자산분류설명
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_AM_ASST_CL PRIMARY KEY (ASST_CL_SN)
) WITHOUT OIDS;

COMMENT ON TABLE T_AM_ASST_CL IS '자산분류';
COMMENT ON COLUMN T_AM_ASST_CL.ASST_CL_SN 		 IS '자산분류일련번호';
COMMENT ON COLUMN T_AM_ASST_CL.UPPER_ASST_CL_SN IS '상위자산분류일련번호';
COMMENT ON COLUMN T_AM_ASST_CL.ASST_CL_NM 		 IS '자산분류명';
COMMENT ON COLUMN T_AM_ASST_CL.SORT_ORDR 		 IS '정렬순서';
COMMENT ON COLUMN T_AM_ASST_CL.ASST_CL_DC 		 IS '자산분류설명';
COMMENT ON COLUMN T_AM_ASST_CL.USE_YN IS '사용여부';
COMMENT ON COLUMN T_AM_ASST_CL.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_AM_ASST_CL.REGIST_DT IS '등록일시';
COMMENT ON COLUMN T_AM_ASST_CL.MODIFY_ID IS '수정아이디';
COMMENT ON COLUMN T_AM_ASST_CL.MODIFY_DT IS '수정일시';


-- 자산분류내역
CREATE TABLE T_AM_ASST_CL_LIST
(
	ASST_SN serial NOT NULL,					-- 자산일련번호
	ASST_CL_SN serial NOT NULL,					-- 자산분류일련번호
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_AM_ASST PRIMARY KEY (ASST_SN, ASST_CL_SN)
) WITHOUT OIDS;

COMMENT ON TABLE T_AM_ASST_CL_LIST IS '자산분류내역';
COMMENT ON COLUMN T_AM_ASST_CL_LIST.ASST_SN 		 IS '자산일련번호';
COMMENT ON COLUMN T_AM_ASST_CL_LIST.ASST_CL_SN 		 IS '자산분류일련번호';
COMMENT ON COLUMN T_AM_ASST_CL_LIST.USE_YN IS '사용여부';
COMMENT ON COLUMN T_AM_ASST_CL_LIST.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_AM_ASST_CL_LIST.REGIST_DT IS '등록일시';
COMMENT ON COLUMN T_AM_ASST_CL_LIST.MODIFY_ID IS '수정아이디';
COMMENT ON COLUMN T_AM_ASST_CL_LIST.MODIFY_DT IS '수정일시';


-- 자산속성
CREATE TABLE T_AM_ASST_ATRB
(
	ASST_ATRB_SN serial NOT NULL,				-- 자산속성일련번호
	ASST_ATRB_NM VARCHAR(200)  NOT NULL,		-- 자산속성명 
	ASST_ATRB_SE VARCHAR(50),					-- 자산속성구분
	ASST_ATRB_DC VARCHAR(2000),					-- 자산속성설명
	SORT_ORDR 	 numeric,							-- 정렬순서
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_AM_ASST_ATRB PRIMARY KEY (ASST_ATRB_SN)
) WITHOUT OIDS;

COMMENT ON TABLE T_AM_ASST_ATRB IS '자산속성';
COMMENT ON COLUMN T_AM_ASST_ATRB.ASST_ATRB_SN	 IS '자산속성일련번호';
COMMENT ON COLUMN T_AM_ASST_ATRB.ASST_ATRB_NM		 IS '자산속성명';
COMMENT ON COLUMN T_AM_ASST_ATRB.ASST_ATRB_SE		 IS '자산속성구분';
COMMENT ON COLUMN T_AM_ASST_ATRB.ASST_ATRB_DC		 IS '자산속성설명';
COMMENT ON COLUMN T_AM_ASST_ATRB.SORT_ORDR 			 IS '정렬순서';
COMMENT ON COLUMN T_AM_ASST_ATRB.USE_YN IS '사용여부';
COMMENT ON COLUMN T_AM_ASST_ATRB.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_AM_ASST_ATRB.REGIST_DT IS '등록일시';
COMMENT ON COLUMN T_AM_ASST_ATRB.MODIFY_ID IS '수정아이디';
COMMENT ON COLUMN T_AM_ASST_ATRB.MODIFY_DT IS '수정일시';


-- 자산속성내역
CREATE TABLE T_AM_ASST_ATRB_LIST
(
	ASST_SN numeric NOT NULL,					-- 자산일련번호
	ASST_ATRB_SN numeric NOT NULL,				-- 자산분류일련번호
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_AM_ASST_ATRB_LIST PRIMARY KEY (ASST_SN,ASST_ATRB_SN )
) WITHOUT OIDS;

COMMENT ON TABLE T_AM_ASST_ATRB_LIST IS '자산속성';
COMMENT ON COLUMN T_AM_ASST_ATRB_LIST.ASST_SN	 IS '자산일련번호';
COMMENT ON COLUMN T_AM_ASST_ATRB_LIST.ASST_ATRB_SN	 IS '자산속성일련번호';
COMMENT ON COLUMN T_AM_ASST_ATRB_LIST.USE_YN IS '사용여부';
COMMENT ON COLUMN T_AM_ASST_ATRB_LIST.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_AM_ASST_ATRB_LIST.REGIST_DT IS '등록일시';
COMMENT ON COLUMN T_AM_ASST_ATRB_LIST.MODIFY_ID IS '수정아이디';
COMMENT ON COLUMN T_AM_ASST_ATRB_LIST.MODIFY_DT IS '수정일시';


-- 업체
CREATE TABLE T_OP_CRPR
(
	CRPR_SN     serial NOT NULL,					-- 업체일련번호
	CRPR_NM     VARCHAR(200)  NOT NULL,				-- 업체명
	CRPR_SE     VARCHAR(5)  NOT NULL,				-- 업체구분
	CRPR_DC     VARCHAR(2000),						-- 업체설명
	CHARGER_NM  VARCHAR(200),					-- 담당자명
	TELNO       VARCHAR(11),							-- 전화번호
	USE_YN      CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	CONSTRAINT PK_T_OP_CRPR PRIMARY KEY (CRPR_SN)
) WITHOUT OIDS;

COMMENT ON TABLE T_OP_CRPR IS '업체';
COMMENT ON COLUMN T_OP_CRPR.CRPR_SN     IS '업체일련번호';
COMMENT ON COLUMN T_OP_CRPR.CRPR_NM   	 IS '업체명';
COMMENT ON COLUMN T_OP_CRPR.CRPR_SE   	 IS '업체구분';
COMMENT ON COLUMN T_OP_CRPR.CRPR_DC   	 IS '업체설명';
COMMENT ON COLUMN T_OP_CRPR.CHARGER_NM	 IS '담당자명';
COMMENT ON COLUMN T_OP_CRPR.TELNO     	 IS '전화번호';
COMMENT ON COLUMN T_OP_CRPR.USE_YN IS '사용여부';
COMMENT ON COLUMN T_OP_CRPR.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_OP_CRPR.REGIST_DT IS '등록일시';
COMMENT ON COLUMN T_OP_CRPR.MODIFY_ID IS '수정아이디';
COMMENT ON COLUMN T_OP_CRPR.MODIFY_DT IS '수정일시';


-- 공사
CREATE TABLE T_OP_CSTRN
(
	CSTRN_SN serial NOT NULL,					-- 공사일련번호
	CSTRN_NM VARCHAR(200)  NOT NULL,			-- 공사명
	CSTRN_CT numeric,							-- 공사비용
	CSTRN_DC VARCHAR(2000),						-- 공사설명
	CRPR_SN     numeric NOT NULL,				-- 업체일련번호
	BEGIN_YMD  CHAR(8),							-- 시작일
	END_YMD  CHAR(8),							-- 종료일
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	CONSTRAINT PK_T_OP_CRPR PRIMARY KEY (CSTRN_SN)
) WITHOUT OIDS;

COMMENT ON TABLE T_OP_CRPR IS '업체';
COMMENT ON COLUMN T_OP_CRPR.CRPR_SN     IS '업체일련번호';
COMMENT ON COLUMN T_OP_CRPR.CRPR_NM   	 IS '업체명';
COMMENT ON COLUMN T_OP_CRPR.CRPR_SE   	 IS '업체구분';
COMMENT ON COLUMN T_OP_CRPR.CRPR_DC   	 IS '업체설명';
COMMENT ON COLUMN T_OP_CRPR.CHARGER_NM	 IS '담당자명';
COMMENT ON COLUMN T_OP_CRPR.TELNO     	 IS '전화번호';
COMMENT ON COLUMN T_OP_CRPR.USE_YN IS '사용여부';
COMMENT ON COLUMN T_OP_CRPR.REGIST_ID IS '등록아이디';
COMMENT ON COLUMN T_OP_CRPR.REGIST_DT IS '등록일시';
COMMENT ON COLUMN T_OP_CRPR.MODIFY_ID IS '수정아이디';
COMMENT ON COLUMN T_OP_CRPR.MODIFY_DT IS '수정일시';


-- 공사자산내역
CREATE TABLE T_OP_CSTRN_ASST_LIST
(
	CSTRN_SN numeric NOT NULL,					-- 공사일련번호
	ASST_SN numeric NOT NULL,					-- 자산일련번호
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_AM_ASST PRIMARY KEY (CSTRN_SN,ASST_SN)
) WITHOUT OIDS;

-- 민원
CREATE TABLE T_OP_CVPL
(
	CVPL_SN numeric NOT NULL,					-- 민원일련번호
	CVPL_SE VARCHAR(200)  NOT NULL,				-- 민원구분
	CVPL_SJ VARCHAR(200)  NOT NULL,				-- 민원제목
	CVPL_CN VARCHAR(200)  NOT NULL,				-- 민원내용
	CVPLP_NM VARCHAR(200)  NOT NULL,			-- 민원인명
	CVPL_PRCS_CD VARCHAR(200)  NOT NULL,		-- 민원처리코드
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_AM_ASST PRIMARY KEY (CSTRN_SN,ASST_SN)
) WITHOUT OIDS;

-- 민원자산내역
CREATE TABLE T_OP_CVPL_ASST_LIST
(
	CVPL_SN numeric NOT NULL,					-- 공사일련번호
	ASST_SN numeric NOT NULL,					-- 자산일련번호
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_OP_CVPL_ASST_LIST PRIMARY KEY (CVPL_SN,ASST_SN)
) WITHOUT OIDS;

-- 설문
CREATE TABLE T_SV_SRVY
(
	SRVY_SN serial NOT NULL,					-- 설문일련번호
	SRVY_THEMA VARCHAR(200)  NOT NULL,			-- 설문주제
	BEGIN_YMD  CHAR(8),							-- 시작일
	END_YMD  CHAR(8),							-- 종료일
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_SV_SRVY PRIMARY KEY (SRVY_SN)
) WITHOUT OIDS;

-- 설문문항
CREATE TABLE T_SV_SRVY_QSIT
(
	QSIT_SN serial NOT NULL,					-- 문항일련번호
	SRVY_SN numeric NOT NULL,					-- 설문일련번호
	SRVY_CN  VARCHAR(1000)  NOT NULL,			-- 설문내용
	SORT_ORDR numeric,							-- 정렬순서
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_SV_SRVY_QSIT PRIMARY KEY (QSIT_SN)
) WITHOUT OIDS;

-- 설문보기
CREATE TABLE T_SV_SRVY_EXPE
(
	QSIT_SN numeric NOT NULL,					-- 문항일련번호
	EXPE_SN numeric NOT NULL,					-- 보기일련번호
	EXPE_CN  VARCHAR(1000)  NOT NULL,			-- 보기내용
	SORT_ORDR numeric,							-- 정렬순서
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_SV_SRVY_EXPE PRIMARY KEY (QSIT_SN,EXPE_SN)
) WITHOUT OIDS;

-- 설문답변
CREATE TABLE T_SV_SRVY_ANSWER
(
	SRVY_SN numeric NOT NULL,					-- 설문일련번호
	QSIT_SN numeric NOT NULL,					-- 문항일련번호
	EXPE_SN numeric NOT NULL,					-- 보기일련번호
	ANSWER_CN  VARCHAR(1000)  NOT NULL,			-- 답변내용
	CONECT_IP VARCHAR(100)  NOT NULL,			-- 접속IP
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_SV_SRVY_ANSWER PRIMARY KEY (SRVY_SN,QSIT_SN)
) WITHOUT OIDS;

-- 관망직접평가
CREATE TABLE T_EV_P_DIRCT
(
	EVL_SN serial NOT NULL,						-- 평가일련번호
	EVL_NM VARCHAR(200)  NOT NULL,				-- 평가명
	EVL_PRCS_CD  CHAR(8),						-- 평가처리코드
	EXAMIN_YMD  CHAR(8),						-- 조사일
	CHARGER_NM  VARCHAR(200),					-- 담당자명
	RM  VARCHAR(500),							-- 비고
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_EV_P_DIRCT PRIMARY KEY (EVL_SN)
) WITHOUT OIDS;

-- 직접평가항목
CREATE TABLE T_EV_P_DIRCT_ITM
(
	DIRCT_EVL_ITM_CD VARCHAR(20) NOT NULL,		-- 직접평가항목코드
	DIRCT_EVL_ITM_NM VARCHAR(200)  NOT NULL,	-- 직접평가항목명
	ITM_DC  VARCHAR(2000),						-- 항목설명
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_EV_P_DIRCT_ITM PRIMARY KEY (DIRCT_EVL_ITM_CD)
) WITHOUT OIDS;

-- 측정내역
CREATE TABLE T_EV_P_MESURE_LIST
(
	MESURE_SN serial NOT NULL,					-- 측정일련번호
	EVL_SN numeric NOT NULL,					-- 평가일련번호
	ASST_SN numeric NOT NULL,					-- 자산일련번호
	DIRCT_EVL_ITM_CD VARCHAR(20) NOT NULL,		-- 직접평가항목코드
	MESURE_CN  VARCHAR(1000),					-- 즉정내용
	MESURE_VAL numeric,							-- 측정값
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	CONSTRAINT PK_T_EV_P_MESURE_LIST PRIMARY KEY (MESURE_SN)
) WITHOUT OIDS;

-- 직접평가기준
CREATE TABLE T_EV_P_DIRCT_STDR
(
	EVL_STDR_SN serial NOT NULL,				-- 평가기준일련번호
	MTRPIP_CD VARCHAR(20) NOT NULL,				-- 관종코드
	GRAD_CD VARCHAR(20) NOT NULL,				-- 등급코드
	IMPVT_MESR_CN VARCHAR(1000) NOT NULL,		-- 개량방안내용
	JDG_CND_CN  VARCHAR(1000),					-- 판단조건내용
	RM  VARCHAR(500),							-- 비고
	EXAMIN_MTH_CD  VARCHAR(20),					-- 조사방법코드
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_EV_P_DIRCT_STDR PRIMARY KEY (EVL_STDR_SN)
) WITHOUT OIDS;

-- 직접평가결과
CREATE TABLE T_EV_P_DIRCT_RST
(
	EVL_SN numeric NOT NULL,					-- 평가일련번호
	ASST_SN numeric NOT NULL,					-- 자산일련번호
	MTRPIP_CD VARCHAR(20) NOT NULL,				-- 관종코드
	PIP_DMTR  numeric,							-- 관경
	LYNG_YYNU  numeric,							-- 매설년수
	PIP_LT  numeric,							-- 관길이
	INNSF_CLTH_VAL  numeric,					-- 내면피복값
	OUTSF_CLTH_VAL  numeric,					-- 외면피복값
	MUMM_SAFE_COEF  numeric,					-- 최소안전계수
	GRAD_CD VARCHAR(20) NOT NULL,				-- 등급코드
	IMPVT_MESR_CN VARCHAR(1000) NOT NULL,		-- 개량방안내용
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_EV_P_DIRCT_STDR PRIMARY KEY (EVL_STDR_SN)
) WITHOUT OIDS;

-- 관망간접평가
CREATE TABLE T_EV_P_INDR
(
	EVL_SN serial NOT NULL,						-- 평가일련번호
	EVL_NM VARCHAR(200)  NOT NULL,				-- 평가명
	EVL_SE  VARCHAR(50),						-- 평가구분
	EVL_DC  VARCHAR(2000),						-- 평가설명
	CRPR_SN  numeric,							-- 업체일련번호
	SECT_PRTT_STDR_CN  VARCHAR(1000),			-- 구간분할기준내용
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_EV_P_INDR PRIMARY KEY (EVL_SN)
) WITHOUT OIDS;


-- 점수평가항목
CREATE TABLE T_EV_P_SCOR_ITM
(
	SCOR_EVL_ITM_CD VARCHAR(20) NOT NULL,		-- 점수평가항목코드
	EVL_ITM_NM VARCHAR(200)  NOT NULL,			-- 평가항목명
	EVL_ITM_SE VARCHAR(50),						-- 평가항목구분
	ITM_DC  VARCHAR(2000),						-- 항목설명
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_EV_P_SCOR_ITM PRIMARY KEY (EVL_ITM_CD)
) WITHOUT OIDS;

-- 점수평가항목조건
CREATE TABLE T_EV_P_SCOR_CND
(
	CND_SN serial NOT NULL,						-- 조건일련번호
	SCOR_EVL_ITM_CD VARCHAR(20) NOT NULL,		-- 점수평가항목코드
	MTRPIP_AFLT_CD VARCHAR(20) NOT NULL,		-- 관종계열코드
	BEGIN_VAL numeric,							-- 시작값
	END_VAL numeric,							-- 종료값
	END_INCS_YN char(1),						-- 종료포함여부
	CND_VAL  numeric,							-- 조건값
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_EV_P_SCOR_ITM PRIMARY KEY (EVL_ITM_CD)
) WITHOUT OIDS;

-- 점수평가기준
CREATE TABLE T_EV_P_SCOR_STDR
(
	EVL_STDR_SN serial NOT NULL,				-- 평가기준일련번호
	MTRPIP_AFLT_CD VARCHAR(20) NOT NULL,		-- 관종계열코드
	GRAD_CD VARCHAR(20) NOT NULL,				-- 등급코드
	BEGIN_VAL numeric,							-- 시작값
	END_VAL numeric,							-- 종료값
	IMPVT_MESR_CN VARCHAR(1000) NOT NULL,		-- 개량방안내용
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_EV_P_SCOR_STDR PRIMARY KEY (EVL_ITM_CD)
) WITHOUT OIDS;

-- 점수평가가중치
CREATE TABLE T_EV_P_SCOR_CND
(
	WGHT_SN serial NOT NULL,					-- 가중치일련번호
	SCOR_EVL_ITM_CD VARCHAR(20) NOT NULL,		-- 점수평가항목코드
	MTRPIP_AFLT_CD VARCHAR(20) NOT NULL,		-- 관종계열코드
	WGHT_VAL  numeric,							-- 가중치값
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_EV_P_SCOR_ITM PRIMARY KEY (EVL_ITM_CD)
) WITHOUT OIDS;

-- 매설년수계수
CREATE TABLE T_EV_P_LYNG_COEF
(
	LYNG_COEF_SN serial NOT NULL,				-- 매설계수일련번호
	REVISN_COEF VARCHAR(20) NOT NULL,			-- 보정계수
	BEGIN_VAL numeric,							-- 시작값
	END_VAL numeric,							-- 종료값
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_EV_P_LYNG_COEF PRIMARY KEY (EVL_ITM_CD)
) WITHOUT OIDS;


-- 점수평가관종계열
CREATE TABLE T_EV_P_SCOR_MTRPIP_AFLT
(
	MTRPIP_AFLT_CD VARCHAR(20) NOT NULL,		-- 관종계열코드
	MTRPIP_CD VARCHAR(20) NOT NULL,				-- 관종코드
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_EV_P_SCOR_MTRPIP_AFLT PRIMARY KEY (MTRPIP_AFLT_CD, MTRPIP_CD)
) WITHOUT OIDS;

-- 평가구간
CREATE TABLE T_EV_P_SECT
(
	SECT_SN SERIAL NOT NULL,					-- 구간일련번호
	SECT_NM VARCHAR(20) NOT NULL,				-- 구간명
	SECT_PIP_LT numeric,						-- 구간관길이
	SECT_CNNCT_DN numeric,						-- 구간이음밀도
	SECT_BRKDN_CO numeric,						-- 구간파손수
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_EV_P_SCOR_MTRPIP_AFLT PRIMARY KEY (MTRPIP_AFLT_CD, MTRPIP_CD)
) WITHOUT OIDS;


-- 점수평가개별중간내역
CREATE TABLE T_EV_P_SCOR_INDV
(
	EVL_SN numeric NOT NULL,					-- 평가일련번호
	ASST_SN numeric  NOT NULL,					-- 자산일련번호
	EVL_ITM_CD VARCHAR(20),						-- 평가항목코드
	MTRPIP_AFLT_CD VARCHAR(20),					-- 관종계열코드
	ASST_ATRB_CN VARCHAR(1000),					-- 자산속성내용
	CND_VAL  numeric,							-- 조건값
	WGHT_VAL  numeric,							-- 가중치값
	SCOR  numeric,								-- 점수
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_EV_P_INDR PRIMARY KEY (EVL_SN)
) WITHOUT OIDS;

-- 점수평가중간내역구간
CREATE TABLE T_EV_P_SCOR_SECT
(
	EVL_SN numeric NOT NULL,					-- 평가일련번호
	SECT_SN numeric  NOT NULL,					-- 구간일련번호
	EVL_ITM_CD VARCHAR(20),						-- 평가항목코드
	MTRPIP_AFLT_CD VARCHAR(20),					-- 관종계열코드
	ASST_ATRB_CN VARCHAR(1000),					-- 자산속성내용
	CND_VAL  numeric,							-- 조건값
	WGHT_VAL  numeric,							-- 가중치값
	SCOR  numeric,								-- 점수
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시

	CONSTRAINT PK_T_EV_P_INDR PRIMARY KEY (EVL_SN)
) WITHOUT OIDS;

-- 점수평가개별결과
CREATE TABLE T_EV_P_SCOR_INDV_RST
(
	EVL_SN numeric NOT NULL,					-- 평가일련번호
	ASST_SN numeric  NOT NULL,					-- 자산일련번호
	SECT_SN numeric  NOT NULL,					-- 구간일련번호
	SCOR_SUM numeric,							-- 점수합계
	WGHT_SUM numeric,							-- 가중치합계
	REVISN_COEF numeric,						-- 보정계수
	EVL_SCOR  numeric,							-- 평가점수
	GRAD_CD VARCHAR(20) NOT NULL,				-- 등급코드
	IMPVT_MESR_CN VARCHAR(1000) NOT NULL,		-- 개량방안내용
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_EV_P_SCOR_INDV_RST PRIMARY KEY (EVL_SN, ASST_SN)
) WITHOUT OIDS;

-- 점수평가구간결과
CREATE TABLE T_EV_P_SCOR_INDV_RST
(
	EVL_SN numeric NOT NULL,					-- 평가일련번호
	SECT_SN numeric  NOT NULL,					-- 구간일련번호
	SCOR_SUM numeric,							-- 점수합계
	WGHT_SUM numeric,							-- 가중치합계
	REVISN_COEF numeric,						-- 보정계수
	EVL_SCOR  numeric,							-- 평가점수
	GRAD_CD VARCHAR(20) NOT NULL,				-- 등급코드
	IMPVT_MESR_CN VARCHAR(1000) NOT NULL,		-- 개량방안내용
	USE_YN CHAR(1),								-- 사용여부
	REGIST_ID varchar(50),						-- 등록아이디
	REGIST_DT timestamp,						-- 등록일시
	MODIFY_ID varchar(50),						-- 수정아이디
	MODIFY_DT timestamp,						-- 수정일시
	
	CONSTRAINT PK_T_EV_P_SCOR_INDV_RST PRIMARY KEY (EVL_SN, ASST_SN)
) WITHOUT OIDS;











