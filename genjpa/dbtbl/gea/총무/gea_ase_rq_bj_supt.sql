--
-- Table structure for table `gea_ase_rq_bj_supt`
--

DROP TABLE IF EXISTS `gea_ase_rq_bj_supt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ase_rq_bj_supt` (
  `reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '요청번호',
  `rq_bj_seqno` decimal(3,0) NOT NULL COMMENT '요청대상순번',
  `ase_supt_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자산지원방법코드',
  `aseno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자산번호',
  `ntl_prdt` date DEFAULT NULL COMMENT '설치예정일자',
  `ntl_entnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설치업체명',
  `lend_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '대여여부',
  `lend_nddt` date DEFAULT NULL COMMENT '대여종료일자',
  `lend_strdt` date DEFAULT NULL COMMENT '대여시작일자',
  `brer_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피대여자직원번호',
  `brer_mv_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피대여자이동전화지역번호',
  `brer_mv_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피대여자이동전화국번',
  `brer_mv_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피대여자이동전화일련번호',
  `ntl_entp_chrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설치업체담당자명',
  `delr_reqdt` date DEFAULT NULL COMMENT '배달요청일자',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`reqno`,`rq_bj_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자산요청대상지원';
