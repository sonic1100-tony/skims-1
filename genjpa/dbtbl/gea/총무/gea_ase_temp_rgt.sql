--
-- Table structure for table `gea_ase_temp_rgt`
--

DROP TABLE IF EXISTS `gea_ase_temp_rgt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ase_temp_rgt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ase_temp_rgtno` decimal(7,0) NOT NULL COMMENT '자산임시등록번호',
  `aseno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자산번호',
  `cmpu_admno` varchar(23) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산관리번호',
  `reqno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청번호',
  `rq_bj_seqno` decimal(3,0) DEFAULT NULL COMMENT '요청대상순번',
  `asenm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '자산명',
  `cqdt` date NOT NULL COMMENT '취득일자',
  `cqamt` decimal(15,0) NOT NULL COMMENT '취득금액',
  `ase_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자산구분코드',
  `ase_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자산유형코드',
  `ase_untcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자산단위코드',
  `ase_std` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자산규격',
  `itmcd` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목코드',
  `mdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모델명',
  `dlplc_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래처고객번호',
  `org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관실체구분코드',
  `adm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '관리기관코드',
  `adm_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '관리직원번호',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `prd_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제조회사코드',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `mv_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전화지역번호',
  `mv_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전화국번',
  `mv_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전화일련번호',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `cpu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CPU구분코드',
  `cpu_clock_typ` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CPU클록타입',
  `hardd_typ` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '하드디스크타입',
  `ram_size` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '램SIZE',
  `ip_adr` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'IP주소',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_ase_temp_rgt_00` (`ase_temp_rgtno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자산임시등록';
