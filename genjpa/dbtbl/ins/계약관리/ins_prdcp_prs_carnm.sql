--
-- Table structure for table `ins_prdcp_prs_carnm`
--

DROP TABLE IF EXISTS `ins_prdcp_prs_carnm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_prdcp_prs_carnm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `prdcp_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '제작사코드',
  `ctp_usecd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차종용도코드',
  `psn_crp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개인법인구분코드',
  `ctp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차종구분코드',
  `prs_cr_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '대표차순번',
  `prs_carnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표차명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_prdcp_prs_carnm_00` (`prdcp_cd`,`ctp_usecd`,`psn_crp_flgcd`,`ctp_flgcd`,`prs_cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='제작사대표차명';
