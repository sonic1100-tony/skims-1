--
-- Table structure for table `ccm_dpamt_dl_spc`
--

DROP TABLE IF EXISTS `ccm_dpamt_dl_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dpamt_dl_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `dpamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예치금구분코드',
  `dpamt_dl_spc_seqno` decimal(3,0) NOT NULL COMMENT '예치금처리내역순번',
  `dpamt_dl_bdin_chamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예치금처리대인부담금액',
  `dpamt_dl_prdm_chamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예치금처리대물부담금액',
  `dpamt_dlamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예치금처리금액',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `py_rslt_no` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '지급결의번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_dpamt_dl_spc_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`dpamt_flgcd`,`dpamt_dl_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예치금처리내역';
