--
-- Table structure for table `ins_ud_cvr_dt_spc`
--

DROP TABLE IF EXISTS `ins_ud_cvr_dt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ud_cvr_dt_spc` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `cvr_bj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보대상구분코드',
  `relpc_oj_seqno` decimal(10,0) DEFAULT NULL COMMENT '관계자목적물순번',
  `ch_isamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경가입금액',
  `ch_ap_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경적용보험료',
  `ch_is_amtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경가입금액코드',
  `isamt` decimal(17,2) DEFAULT NULL COMMENT '가입금액',
  `isamt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입금액코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`cvrcd`,`cvr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심사담보세부내역';
