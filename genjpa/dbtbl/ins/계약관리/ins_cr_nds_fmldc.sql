--
-- Table structure for table `ins_cr_nds_fmldc`
--

DROP TABLE IF EXISTS `ins_cr_nds_fmldc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_nds_fmldc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `fmlz_dcu_seqno` decimal(5,0) NOT NULL COMMENT '구비서류순번',
  `fmlz_dcu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구비서류구분코드',
  `nds_rq_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서신청방법코드',
  `nds_fmlz_dcu_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배서구비서류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_nds_fmldc_00` (`plyno`,`ndsno`,`fmlz_dcu_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약배서구비서류';
