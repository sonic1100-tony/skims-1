--
-- Table structure for table `ccm_trbl_iq_ag_ds`
--

DROP TABLE IF EXISTS `ccm_trbl_iq_ag_ds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_trbl_iq_ag_ds` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `trbl_iq_rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '분쟁심의접수번호',
  `dm_man_rpbl_rt` decimal(3,0) DEFAULT NULL COMMENT '청구인책임비율',
  `cdm_man_rpbl_rt` decimal(3,0) DEFAULT NULL COMMENT '피청구인책임비율',
  `ag_dsamt` decimal(15,0) DEFAULT NULL COMMENT '합의결정금액',
  `agdt` date DEFAULT NULL COMMENT '합의일자',
  `ag_ds_rs_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '합의결정사유내용',
  `ch_stdt` date DEFAULT NULL COMMENT '변경기준일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_trbl_iq_ag_ds_00` (`trbl_iq_rcpno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='분쟁심의합의결정';
