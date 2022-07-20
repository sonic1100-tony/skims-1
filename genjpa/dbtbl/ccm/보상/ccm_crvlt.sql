--
-- Table structure for table `ccm_crvlt`
--

DROP TABLE IF EXISTS `ccm_crvlt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_crvlt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `vlt_seqno` decimal(3,0) NOT NULL COMMENT '위반순번',
  `cr_vlt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약위반구분코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `cr_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약내용',
  `cr_vlt_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약위반내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_crvlt_00` (`rcp_yymm`,`rcp_nv_seqno`,`vlt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약위반';
