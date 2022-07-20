--
-- Table structure for table `lse_wr_adm_bj`
--

DROP TABLE IF EXISTS `lse_wr_adm_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_wr_adm_bj` (
  `wr_adm_bjpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '불량관리대상코드',
  `wr_adm_kyvl` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '불량관리키값',
  `wr_adm_seqno` decimal(11,0) NOT NULL COMMENT '불량관리순번',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ad_1_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추가1항목',
  `ad_2_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추가2항목',
  `rgtdt` date NOT NULL COMMENT '등록일자',
  `cncdt` date DEFAULT NULL COMMENT '해제일자',
  `nr_rgt_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관심등록사유',
  `cnc_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제사유',
  `cnc_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '해제여부',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `rgt_stf_psgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원소속기관코드',
  `cnc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제직원번호',
  `cnc_stf_psgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제직원소속기관코드',
  `rgt_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록유형코드',
  `cnc_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제유형코드',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `dv_bjyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당대상여부',
  `issu_hsp_rgtno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문제병원등록번호',
  `prv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재구분코드',
  `prvdt` date DEFAULT NULL COMMENT '결재일자',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) DEFAULT NULL COMMENT '보상키순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`wr_adm_bjpcd`,`wr_adm_kyvl`,`wr_adm_seqno`,`ap_nd_dthms`,`ap_str_dthms`),
  KEY `idx_lse_wr_adm_bj_10` (`ctm_dscno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='불량관리대상';
