--
-- Table structure for table `ins_pl_oj_cirm_bn`
--

DROP TABLE IF EXISTS `ins_pl_oj_cirm_bn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_oj_cirm_bn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `oj_seqno` decimal(5,0) NOT NULL COMMENT '목적물순번',
  `cirm_btpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '주변업종코드',
  `bn_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업종분류코드',
  `cirm_bn_dt` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주변업종상세',
  `ltrm_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기배서처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_oj_cirm_bn_00` (`plno`,`cgaf_ch_seqno`,`oj_seqno`,`cirm_btpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계목적물주변업종';
