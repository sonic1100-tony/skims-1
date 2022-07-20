--
-- Table structure for table `ins_cndl_ud`
--

DROP TABLE IF EXISTS `ins_cndl_ud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cndl_ud` (
  `udno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '심사번호',
  `ndv_ud_seqno` decimal(5,0) NOT NULL COMMENT '개별심사순번',
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `cndl_ud_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조건부심사결과코드',
  `vl_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가사유',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`udno`,`ndv_ud_seqno`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='조건부심사';
