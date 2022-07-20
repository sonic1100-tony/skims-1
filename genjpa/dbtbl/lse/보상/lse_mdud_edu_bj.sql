--
-- Table structure for table `lse_mdud_edu_bj`
--

DROP TABLE IF EXISTS `lse_mdud_edu_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_mdud_edu_bj` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `edu_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '교육년도',
  `edu_seq` decimal(3,0) NOT NULL COMMENT '교육회차',
  `bj_org_seqno` decimal(3,0) NOT NULL COMMENT '대상기관순번',
  `bjps_flg_cn` varchar(200) COLLATE utf8mb4_bin NOT NULL COMMENT '대상자구분내용',
  `bj_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '대상기관코드',
  `bj_psct` decimal(7,0) NOT NULL COMMENT '대상인원수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_mdud_edu_bj_00` (`edu_yr`,`edu_seq`,`bj_org_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='의료심사교육대상';
