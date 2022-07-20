--
-- Table structure for table `ins_trt_cnc_ntc`
--

DROP TABLE IF EXISTS `ins_trt_cnc_ntc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_trt_cnc_ntc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `ntc_crr_seqno` decimal(3,0) NOT NULL COMMENT '안내이력순번',
  `trt_cnc_ntc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약해제안내여부',
  `trt_cnc_ntcgu_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약해제안내자직원번호',
  `trt_cnc_ntc_dthms` datetime DEFAULT NULL COMMENT '특약해제안내일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_trt_cnc_ntc_00` (`plyno`,`cvrcd`,`cvr_seqno`,`ntc_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='특약해제안내';
