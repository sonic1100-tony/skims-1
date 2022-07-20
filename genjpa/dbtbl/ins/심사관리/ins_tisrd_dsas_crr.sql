--
-- Table structure for table `ins_tisrd_dsas_crr`
--

DROP TABLE IF EXISTS `ins_tisrd_dsas_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_tisrd_dsas_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `dsas_rgt_seqno` decimal(3,0) NOT NULL COMMENT '질병등록순번',
  `dsas_rgt_pth_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질병등록경로구분코드',
  `dsas_rgt_rel_atr_1` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '질병등록관계속성1',
  `dsas_rgt_rel_atr_2` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '질병등록관계속성2',
  `dsacd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질병코드',
  `dsnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '질병명',
  `dsas_rgtdt` date NOT NULL COMMENT '질병등록일자',
  `dsas_rgt_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '질병등록직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_tisrd_dsas_crr_00` (`ctmno`,`dsas_rgt_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='부보자질병이력';
