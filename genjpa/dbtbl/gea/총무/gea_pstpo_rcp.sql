--
-- Table structure for table `gea_pstpo_rcp`
--

DROP TABLE IF EXISTS `gea_pstpo_rcp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_pstpo_rcp` (
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `rcp_seqno` decimal(5,0) NOT NULL COMMENT '접수순번',
  `rgs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '등기구분코드',
  `rcvnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '수신자명',
  `dpcnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '발신자명',
  `dcuno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서번호',
  `rgsno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등기번호',
  `titl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '제목',
  `hndov_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인계직원번호',
  `uddt` date DEFAULT NULL COMMENT '인수일자',
  `udrtk_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수기관코드',
  `udrtk_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수직원번호',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rcpdt`,`rcp_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='우편물접수';
