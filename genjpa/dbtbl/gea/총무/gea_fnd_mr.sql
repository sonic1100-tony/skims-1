--
-- Table structure for table `gea_fnd_mr`
--

DROP TABLE IF EXISTS `gea_fnd_mr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_fnd_mr` (
  `fnd_mrdt` date NOT NULL COMMENT '기금모금일자',
  `fnd_mr_seqno` decimal(5,0) NOT NULL COMMENT '기금모금순번',
  `fnd_mramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기금모금금액',
  `fnd_mr_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기금모금분류코드',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`fnd_mrdt`,`fnd_mr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기금모금';
