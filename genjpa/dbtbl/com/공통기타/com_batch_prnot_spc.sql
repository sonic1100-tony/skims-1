--
-- Table structure for table `com_batch_prnot_spc`
--

DROP TABLE IF EXISTS `com_batch_prnot_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_batch_prnot_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stf_or_orgcd` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원/기관코드',
  `batch_prnot_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배치출력물업무구분코드',
  `batch_prnot_dsccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배치출력물식별코드',
  `wrk_dthms` datetime NOT NULL COMMENT '작업일시',
  `stdt` date DEFAULT NULL COMMENT '기준일자',
  `fnl_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종기관코드',
  `out_dthms` datetime DEFAULT NULL COMMENT '출력일시',
  `out_ct` decimal(5,0) DEFAULT NULL COMMENT '출력횟수',
  `prnot_finm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력물파일명',
  `rpt_finm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리포트파일명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_com_batch_prnot_spc_00` (`stf_or_orgcd`,`batch_prnot_bsns_flgcd`,`batch_prnot_dsccd`,`wrk_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배치출력물내역';
