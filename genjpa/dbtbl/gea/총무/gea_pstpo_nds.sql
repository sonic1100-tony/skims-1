--
-- Table structure for table `gea_pstpo_nds`
--

DROP TABLE IF EXISTS `gea_pstpo_nds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_pstpo_nds` (
  `wrkdt` date NOT NULL COMMENT '작업일자',
  `pstpo_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '우편물업무구분코드',
  `nds_pstpo_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배서우편물구분코드',
  `bsncl_plyno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '업무별증권번호',
  `nds_nm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`wrkdt`,`pstpo_bsns_flgcd`,`nds_pstpo_flgcd`,`bsncl_plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='우편물배서';
