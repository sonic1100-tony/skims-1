--
-- Table structure for table `gea_hnd_spc`
--

DROP TABLE IF EXISTS `gea_hnd_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_hnd_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cm_rgtno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '통신등록번호',
  `hnd_seqno` decimal(5,0) NOT NULL COMMENT '장애순번',
  `hnd_cr_dthms` datetime NOT NULL COMMENT '장애발생일시',
  `hnd_nd_dthms` datetime NOT NULL COMMENT '장애종료일시',
  `hnd_cnf_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '장애확인직원번호',
  `hnd_rs` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '장애사유',
  `mng_spc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치내역',
  `mng_chrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치담당자명',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_hnd_spc_00` (`cm_rgtno`,`hnd_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장애내역';
