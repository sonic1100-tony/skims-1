--
-- Table structure for table `ccm_clm_rcp_chek_spc`
--

DROP TABLE IF EXISTS `ccm_clm_rcp_chek_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_clm_rcp_chek_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_rcp_chek_seqno` decimal(3,0) NOT NULL COMMENT '사고접수체크순번',
  `clm_rcp_chek_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고접수체크유형코드',
  `clm_rcp_chek_vl` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '사고접수체크값',
  `hdcft_dv_rs_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수기배당사유내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_clm_rcp_chek_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_rcp_chek_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고접수체크내역';
