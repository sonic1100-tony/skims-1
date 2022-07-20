--
-- Table structure for table `lse_slobs_bfrad_cn`
--

DROP TABLE IF EXISTS `lse_slobs_bfrad_cn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_slobs_bfrad_cn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `slobs_bfrad_cn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '후유장해사전관리내용구분코드',
  `bfrad_cn_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '사전관리내용유무',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_slobs_bfrad_cn_00` (`rcp_yymm`,`rcp_nv_seqno`,`slobs_bfrad_cn_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='후유장해사전관리내용';
