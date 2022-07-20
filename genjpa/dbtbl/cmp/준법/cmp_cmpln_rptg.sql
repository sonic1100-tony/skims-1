--
-- Table structure for table `cmp_cmpln_rptg`
--

DROP TABLE IF EXISTS `cmp_cmpln_rptg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_cmpln_rptg` (
  `vl_chk_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가점검업무구분코드',
  `chk_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '점검년월',
  `chk_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '점검기관코드',
  `chk_xecdt` date DEFAULT NULL COMMENT '점검실시일자',
  `chk_prse_psct` decimal(5,0) DEFAULT NULL COMMENT '점검참석인원수',
  `chk_rpt_1_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검보고1내용',
  `chk_rpt_2_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검보고2내용',
  `chk_rpt_3_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검보고3내용',
  `chk_note_1_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검비고1내용',
  `chk_note_2_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검비고2내용',
  `chk_note_3_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검비고3내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`vl_chk_bsns_flgcd`,`chk_yymm`,`chk_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='준법감시보고서';
