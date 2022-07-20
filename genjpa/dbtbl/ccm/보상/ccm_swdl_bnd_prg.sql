--
-- Table structure for table `ccm_swdl_bnd_prg`
--

DROP TABLE IF EXISTS `ccm_swdl_bnd_prg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_swdl_bnd_prg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `swdl_bnd_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '사기채권접수년월',
  `swdl_bnd_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '사기채권접수일련번호',
  `swdl_bnd_prg_seqno` decimal(5,0) NOT NULL COMMENT '사기채권진행순번',
  `swdl_bnd_prg_iptdt` date NOT NULL COMMENT '사기채권진행입력일자',
  `swdl_bnd_prg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사기채권진행구분코드',
  `swdl_bnd_prg_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사기채권진행내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_swdl_bnd_prg_00` (`swdl_bnd_rcp_yymm`,`swdl_bnd_rcp_sno`,`swdl_bnd_prg_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사기채권진행';
