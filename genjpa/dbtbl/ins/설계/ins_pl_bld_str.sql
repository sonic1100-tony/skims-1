--
-- Table structure for table `ins_pl_bld_str`
--

DROP TABLE IF EXISTS `ins_pl_bld_str`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_bld_str` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `oj_seqno` decimal(5,0) NOT NULL COMMENT '목적물순번',
  `bld_seqno` decimal(5,0) NOT NULL COMMENT '건물순번',
  `cmpx_bld_seqno` decimal(5,0) NOT NULL COMMENT '복합건물순번',
  `bld_rnkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '건물급수코드',
  `bld_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물형태코드',
  `plecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기둥코드',
  `rofcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지붕코드',
  `wllcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '벽코드',
  `botm_are` decimal(17,2) DEFAULT '0.00' COMMENT '바닥면적',
  `are_untcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면적단위코드',
  `ltrm_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기배서처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_bld_str_00` (`plno`,`cgaf_ch_seqno`,`oj_seqno`,`bld_seqno`,`cmpx_bld_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=10637 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계건물구조';
