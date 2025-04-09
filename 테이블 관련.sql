-- ③ 회원 정보 저장 테이블 생성
CREATE TABLE applicant (
    id        VARCHAR(20) PRIMARY KEY,     -- 로그인 ID (PK)
    pwd       VARCHAR(64) NOT NULL,        -- 암호화된 비밀번호 (SHA-256)
    name      VARCHAR(50) NOT NULL,        -- 이름
    email     VARCHAR(100) NOT NULL,       -- 이메일
    phone     VARCHAR(20),                 -- 전화번호
    photo     VARCHAR(255),                -- 업로드된 사진 파일명
    is_admin  BOOLEAN DEFAULT FALSE        -- 관리자 여부 (true=관리자 / false=수험자)
);


-- ④ 관리자 계정 추가 (비밀번호는 암호화된 상태로 저장해야 함)
INSERT INTO applicant (id, pwd, name, email, phone, is_admin)
VALUES (
    'admin',
    '1234',  -- "abc123"의 SHA-1 예시 (SHA-256으로 바꾸는 게 안전)
    '관리자',
    'admin@example.com',
    '010-1234-5678',
    true
);
