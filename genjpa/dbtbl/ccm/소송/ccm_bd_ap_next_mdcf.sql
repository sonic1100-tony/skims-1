--
-- Table structure for table `ccm_bd_ap_next_mdcf`
--

DROP TABLE IF EXISTS `ccm_bd_ap_next_mdcf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_bd_ap_next_mdcf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lw_prg_sno` decimal(10,0) NOT NULL COMMENT '소송진행일련번호',
  `next_mdcf_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '향후치료비유형코드',
  `next_mdcf` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '향후치료비',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_bd_ap_next_mdcf_00` (`lw_prg_sno`,`next_mdcf_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신체감정향후치료비';
