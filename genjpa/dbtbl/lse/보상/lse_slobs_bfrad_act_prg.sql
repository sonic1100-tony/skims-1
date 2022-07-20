--
-- Table structure for table `lse_slobs_bfrad_act_prg`
--

DROP TABLE IF EXISTS `lse_slobs_bfrad_act_prg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_slobs_bfrad_act_prg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `bfrad_act_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '사전관리활동순번',
  `slobs_bfrad_act_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '후유장해사전관리활동구분코드',
  `bfrad_act_prgdt` date NOT NULL COMMENT '사전관리활동진행일자',
  `bfrad_act_prg_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '사전관리활동진행내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_slobs_bfrad_act_prg_00` (`rcp_yymm`,`rcp_nv_seqno`,`bfrad_act_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='후유장해사전관리활동진행';
