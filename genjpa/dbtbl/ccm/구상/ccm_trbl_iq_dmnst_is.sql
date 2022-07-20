--
-- Table structure for table `ccm_trbl_iq_dmnst_is`
--

DROP TABLE IF EXISTS `ccm_trbl_iq_dmnst_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_trbl_iq_dmnst_is` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `is_seqno` decimal(5,0) NOT NULL COMMENT '발급순번',
  `is_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발급업무구분코드',
  `is_dthms` datetime NOT NULL COMMENT '발급일시',
  `is_chr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '발급담당직원번호',
  `dmnst_clm_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입증사고내용',
  `dmnst_issu_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입증쟁점내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`is_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='분쟁심의입증발급';
