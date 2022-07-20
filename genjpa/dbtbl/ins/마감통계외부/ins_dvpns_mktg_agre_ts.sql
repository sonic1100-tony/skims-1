--
-- Table structure for table `ins_dvpns_mktg_agre_ts`
--

DROP TABLE IF EXISTS `ins_dvpns_mktg_agre_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_mktg_agre_ts` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `wrk_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '작업년월',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `mktg_agmdt` date NOT NULL COMMENT '마케팅동의일자',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `mktg_wrcs_finm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마케팅동의서파일명',
  `rcr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령자명',
  `dcuno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서번호',
  `bsnno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무번호',
  `rgt_dcunm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록문서명',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `bz_fml_ctm_seqno` decimal(10,0) DEFAULT NULL COMMENT '영업가족고객순번',
  `age` decimal(3,0) DEFAULT NULL COMMENT '연령',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_mktg_agre_ts_00` (`wrk_yymm`,`stfno`,`ctm_dscno`,`mktg_agmdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원마케팅동의전송';
