--
-- Table structure for table `cus_fndor_rsme`
--

DROP TABLE IF EXISTS `cus_fndor_rsme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_fndor_rsme` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `rsme_da_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이력서자료구분코드',
  `rsme_seqno` decimal(3,0) NOT NULL COMMENT '이력서순번',
  `admsc_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입학년월',
  `grdt_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '졸업년월',
  `schnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '학교명',
  `majr_stdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전공학과명',
  `grdt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '졸업구분코드',
  `sch_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '학교구분코드',
  `edb_note_cn` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '학력비고내용',
  `fndor_ctq_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장례지도사자격증종류코드',
  `cqdt` date DEFAULT NULL COMMENT '취득일자',
  `ctq_is_orgnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자격증발급기관명',
  `ctqno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자격증번호',
  `quf_note_cn` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자격비고내용',
  `wrk_str_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '근무시작년월',
  `wrk_nd_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '근무종료년월',
  `ndbf_wrkpl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종전근무처',
  `depnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부서명',
  `ptnnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직위명',
  `wrk_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '근무내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_fndor_rsme_00` (`ctmno`,`rsme_da_flgcd`,`rsme_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장례지도사이력서';
