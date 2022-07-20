--
-- Table structure for table `cus_ctm_rel`
--

DROP TABLE IF EXISTS `cus_ctm_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_rel` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ppr_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '상위고객번호',
  `sbd_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '하위고객번호',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ctm_rel_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '고객관계유형코드',
  `ppr_ctm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위고객구분코드',
  `prs_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표여부',
  `ch_dlno` varchar(14) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경처리번호',
  `laco_agnt_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법정대리인유형코드',
  `laco_agnt_rs` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법정대리인사유',
  `ctm_rel_dt_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객관계세부유형코드',
  `gr_lvlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체레벨코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_rel_00` (`ppr_ctmno`,`sbd_ctmno`,`ap_nd_dthms`,`ap_str_dthms`),
  KEY `idx_cus_ctm_rel_10` (`sbd_ctmno`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객관계';
