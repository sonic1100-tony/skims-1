--
-- Table structure for table `lse_mstk_py_prvtn_cvr`
--

DROP TABLE IF EXISTS `lse_mstk_py_prvtn_cvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_mstk_py_prvtn_cvr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계약담보코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `py_prvtn_chek_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급방지체크코드',
  `cr_cvrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약담보명',
  `clm_cvrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보명',
  `nots_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_mstk_py_prvtn_cvr_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`dm_seqno`,`plyno`,`cc_seq`,`cr_cvrcd`,`clm_cvrcd`,`py_prvtn_chek_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='실수지급방지담보';
