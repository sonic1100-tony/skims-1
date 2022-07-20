--
-- Table structure for table `gea_supaf_xp_av`
--

DROP TABLE IF EXISTS `gea_supaf_xp_av`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_supaf_xp_av` (
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) NOT NULL COMMENT '신청순번',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cr_xp_rnd_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자동차예상경과보험료',
  `ltrm_xp_rnd_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '장기예상경과보험료',
  `gn_xp_rnd_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반예상경과보험료',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rqdt`,`rq_seqno`,`st_yymm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지원후예상실적';
