--
-- Table structure for table `ins_utatp_cnn_plyno`
--

DROP TABLE IF EXISTS `ins_utatp_cnn_plyno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_utatp_cnn_plyno` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rgtno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '등록번호',
  `plno_or_plyno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호/증권번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_utatp_cnn_plyno_00` (`rgtno`,`plno_or_plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='인수유의자관련증권번호';
