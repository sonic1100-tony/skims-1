--
-- Table structure for table `ccm_trbl_iq_impr_nt`
--

DROP TABLE IF EXISTS `ccm_trbl_iq_impr_nt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_trbl_iq_impr_nt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `trbl_iq_rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '분쟁심의접수번호',
  `trbl_iq_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '분쟁심의종류코드',
  `ntwrn_wrter_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통지서작성자명',
  `ntwrn_rcp_dthms` datetime DEFAULT NULL COMMENT '통지서접수일시',
  `ntwrn_wrt_dthms` datetime DEFAULT NULL COMMENT '통지서작성일시',
  `nt_acdnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통지사건명',
  `ch_stdt` date DEFAULT NULL COMMENT '변경기준일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_trbl_iq_impr_nt_00` (`trbl_iq_rcpno`,`trbl_iq_kndcd`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='분쟁심의불가통지';
