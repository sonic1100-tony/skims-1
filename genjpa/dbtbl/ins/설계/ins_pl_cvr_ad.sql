--
-- Table structure for table `ins_pl_cvr_ad`
--

DROP TABLE IF EXISTS `ins_pl_cvr_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_cvr_ad` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `t1s_rk_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '1회차위험보험료',
  `t13s_rk_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '13회차위험보험료',
  `t25s_rk_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '25회차위험보험료',
  `apl_poct` decimal(12,6) DEFAULT NULL COMMENT '청약점수',
  `t13s_unt_rk_prm` decimal(17,2) DEFAULT NULL COMMENT '13회차단위위험보험료',
  `t1s_unt_rk_prm` decimal(17,2) DEFAULT NULL COMMENT '1회차단위위험보험료',
  `t25s_unt_rk_prm` decimal(17,2) DEFAULT NULL COMMENT '25회차단위위험보험료',
  `unt_isamt` decimal(17,2) DEFAULT NULL COMMENT '단위가입금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_cvr_ad_00` (`plno`,`cgaf_ch_seqno`,`cvrcd`,`cvr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계담보부가';
