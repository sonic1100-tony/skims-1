--
-- Table structure for table `ins_ovse_rins_xc_prvsp`
--

DROP TABLE IF EXISTS `ins_ovse_rins_xc_prvsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ovse_rins_xc_prvsp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ovse_rins_xc_rqno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '해외재보험정산의뢰번호',
  `prv_seqno` decimal(5,0) NOT NULL COMMENT '결재순번',
  `prv_dthms` datetime NOT NULL COMMENT '결재일시',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '결재자직원번호',
  `prv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재구분코드',
  `prv_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재상태코드',
  `prv_admno_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재관리번호유형코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ovse_rins_xc_prvsp_00` (`ovse_rins_xc_rqno`,`prv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='해외재보험정산결재내역';
