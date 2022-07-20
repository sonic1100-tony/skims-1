--
-- Table structure for table `ins_pl_oj_ad_atrvl`
--

DROP TABLE IF EXISTS `ins_pl_oj_ad_atrvl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_oj_ad_atrvl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `oj_seqno` decimal(5,0) NOT NULL COMMENT '목적물순번',
  `gpno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '그룹번호',
  `rowno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '행번호',
  `atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '속성코드',
  `atr_seqno` decimal(5,0) DEFAULT NULL COMMENT '속성순번',
  `atrvl` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '속성값',
  `rtno` varchar(18) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율번호',
  `ltrm_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기배서처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_oj_ad_atrvl_00` (`plno`,`cgaf_ch_seqno`,`oj_seqno`,`gpno`,`rowno`,`atrcd`)
) ENGINE=InnoDB AUTO_INCREMENT=122061 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계목적물추가속성값';
