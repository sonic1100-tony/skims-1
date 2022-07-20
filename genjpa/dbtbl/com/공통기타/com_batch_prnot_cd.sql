--
-- Table structure for table `com_batch_prnot_cd`
--

DROP TABLE IF EXISTS `com_batch_prnot_cd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_batch_prnot_cd` (
  `batch_prnot_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배치출력물업무구분코드',
  `batch_prnot_dsccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배치출력물식별코드',
  `batch_prnot_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배치출력물명',
  `batch_out_cyc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배치출력주기구분코드',
  `batch_out_lvl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배치출력레벨구분코드',
  `adm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리기관코드',
  `adm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리직원번호',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `clodt` date DEFAULT NULL COMMENT '폐쇄일자',
  `batch_prnot_xpnm` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배치출력물설명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`batch_prnot_bsns_flgcd`,`batch_prnot_dsccd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배치출력물코드';
