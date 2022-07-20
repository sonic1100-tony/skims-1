--
-- Table structure for table `gea_gn_pstpo`
--

DROP TABLE IF EXISTS `gea_gn_pstpo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_gn_pstpo` (
  `snddt` date NOT NULL COMMENT '발송일자',
  `pst_rgs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '우편등기구분코드',
  `snd_seqno` decimal(10,0) NOT NULL COMMENT '발송순번',
  `snd_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송기관코드',
  `snd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송직원번호',
  `pstpo_stdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '우편물규격코드',
  `cnvct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '통수',
  `cnvpr_wght` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '통당중량',
  `cnvpr_cg` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '통당요금',
  `pst_cg` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '우편요금',
  `pst_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '우편종류코드',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`snddt`,`pst_rgs_flgcd`,`snd_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반우편물';
