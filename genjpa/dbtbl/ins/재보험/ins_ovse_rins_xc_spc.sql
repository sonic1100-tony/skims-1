--
-- Table structure for table `ins_ovse_rins_xc_spc`
--

DROP TABLE IF EXISTS `ins_ovse_rins_xc_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ovse_rins_xc_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ovse_rins_xc_rqno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '해외재보험정산의뢰번호',
  `xc_mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '정산화폐코드',
  `xcdt` date DEFAULT NULL COMMENT '정산일자',
  `ovse_xaamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '해외정산금액',
  `xcrt_apdt` date DEFAULT NULL COMMENT '환율적용일자',
  `ap_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '적용환율',
  `xcrt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환율구분코드',
  `woncv_ovse_xaamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산해외정산금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ovse_rins_xc_spc_00` (`ovse_rins_xc_rqno`,`xc_mncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='해외재보험정산내역';
