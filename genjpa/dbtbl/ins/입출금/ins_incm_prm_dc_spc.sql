--
-- Table structure for table `ins_incm_prm_dc_spc`
--

DROP TABLE IF EXISTS `ins_incm_prm_dc_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_incm_prm_dc_spc` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) NOT NULL COMMENT '수입보험료발생순번',
  `dc_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '할인종류코드',
  `prm_dc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험료할인구분코드',
  `prm_dcamt` decimal(15,0) DEFAULT NULL COMMENT '보험료할인금액',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_incm_prm_dc_spc_00` (`plyno`,`incm_prm_cr_seqno`,`dc_kndcd`)
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수입보험료할인내역';
