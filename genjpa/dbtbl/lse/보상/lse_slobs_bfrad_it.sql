--
-- Table structure for table `lse_slobs_bfrad_it`
--

DROP TABLE IF EXISTS `lse_slobs_bfrad_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_slobs_bfrad_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `slobs_bfrad_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '후유장해사전관리항목구분코드',
  `bfrad_it_bj_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '사전관리항목대상여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_slobs_bfrad_it_00` (`rcp_yymm`,`rcp_nv_seqno`,`slobs_bfrad_it_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='후유장해사전관리항목';
