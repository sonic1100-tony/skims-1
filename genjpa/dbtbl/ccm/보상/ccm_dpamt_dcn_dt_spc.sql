--
-- Table structure for table `ccm_dpamt_dcn_dt_spc`
--

DROP TABLE IF EXISTS `ccm_dpamt_dcn_dt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dpamt_dcn_dt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `dpamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예치금구분코드',
  `dpamt_dcn_dt_seqno` decimal(3,0) NOT NULL COMMENT '예치금확정상세순번',
  `acc_ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '계정원장번호',
  `dpamt_dcn_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예치금확정금액',
  `dpamt_dcn_dthms` datetime NOT NULL COMMENT '예치금확정일시',
  `dpamt_dcnps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '예치금확정자직원번호',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `slpdt` date DEFAULT NULL COMMENT '전표일자',
  `acc_ldg_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정원장유형코드',
  `drnk_nlic_chamt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '음주무면허부담금구분코드',
  `bdin_chamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '대인부담금액',
  `prdm_chamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '대물부담금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_dpamt_dcn_dt_spc_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`dpamt_flgcd`,`dpamt_dcn_dt_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예치금확정상세내역';
