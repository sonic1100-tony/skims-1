--
-- Table structure for table `ins_pl_cvr_ad_atrvl`
--

DROP TABLE IF EXISTS `ins_pl_cvr_ad_atrvl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_cvr_ad_atrvl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `gpno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '그룹번호',
  `rowno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '행번호',
  `atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '속성코드',
  `atr_seqno` decimal(5,0) DEFAULT NULL COMMENT '속성순번',
  `atrvl` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '속성값',
  `rtno` varchar(18) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율번호',
  `psn_info_atrvl` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보속성값',
  `ltrm_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기배서처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_cvr_ad_atrvl_00` (`plno`,`cgaf_ch_seqno`,`cvrcd`,`cvr_seqno`,`gpno`,`rowno`,`atrcd`)
) ENGINE=InnoDB AUTO_INCREMENT=119888 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계담보추가속성값';
