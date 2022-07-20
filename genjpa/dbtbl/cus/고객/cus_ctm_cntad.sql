--
-- Table structure for table `cus_ctm_cntad`
--

DROP TABLE IF EXISTS `cus_ctm_cntad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_cntad` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cntad_seqno` decimal(10,0) NOT NULL COMMENT '연락처순번',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `cntad_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '연락처구분코드',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `str_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시작전화일련번호',
  `end_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '끝전화일련번호',
  `nlnno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내선번호',
  `brd_tl_ntnno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외국전화국가번호',
  `brd_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외국전화번호',
  `ch_dlno` varchar(14) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경처리번호',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `gu_fire_cntad_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구화재연락처구분코드',
  `cntrt_fail_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉실패사유코드',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분코드',
  `mno_erno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결번오류번호구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_cntad_00` (`ctmno`,`cntad_seqno`,`ap_nd_dthms`,`ap_str_dthms`),
  KEY `idx_cus_ctm_cntad_10` (`tltno`,`str_tlsno`,`ap_nd_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=5863 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객연락처';
