package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.domain.Test;
//DB 접근 위한 인터페이스
//JPA 기본 CRUD 자동 상속
//엔티티(테이블)의 PK 타입
public interface TestRepository extends JpaRepository<Test, Long>{

}
