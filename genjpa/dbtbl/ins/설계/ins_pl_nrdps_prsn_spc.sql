--
-- Table structure for table `ins_pl_nrdps_prsn_spc`
--

DROP TABLE IF EXISTS `ins_pl_nrdps_prsn_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_nrdps_prsn_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `nrdps_prsn_spc_seqno` decimal(10,0) NOT NULL COMMENT '피보험자인원내역순번',
  `nrdps_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자구분코드',
  `nrdps_sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자성별코드',
  `injr_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해급수코드',
  `trf_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교통급수코드',
  `psct` decimal(7,0) NOT NULL COMMENT '인원수',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `age` decimal(3,0) DEFAULT NULL COMMENT '연령',
  `spl_pl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편설계여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_nrdps_prsn_spc_00` (`plno`,`cgaf_ch_seqno`,`relpc_seqno`,`nrdps_prsn_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=18631 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계피보험자인원내역';
