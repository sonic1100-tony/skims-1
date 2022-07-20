--
-- Table structure for table `gea_cmpu_ase_rq_chrps`
--

DROP TABLE IF EXISTS `gea_cmpu_ase_rq_chrps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_cmpu_ase_rq_chrps` (
  `ase_ch_dl_rkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자산변경처리단계코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `praff_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실무여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ase_ch_dl_rkcd`,`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전산자산요청담당자';
