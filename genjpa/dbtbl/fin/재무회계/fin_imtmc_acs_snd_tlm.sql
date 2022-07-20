--
-- Table structure for table `fin_imtmc_acs_snd_tlm`
--

DROP TABLE IF EXISTS `fin_imtmc_acs_snd_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_imtmc_acs_snd_tlm` (
  `snddt` date NOT NULL COMMENT '발송일자',
  `snd_seqno` decimal(10,0) NOT NULL COMMENT '발송순번',
  `tlm_tsdt` date NOT NULL COMMENT '전문전송일자',
  `tlm_pno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전문고유번호',
  `tlm_specd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전문종별코드',
  `spbz_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전문업무구분코드',
  `tlm_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문응답코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`snddt`,`snd_seqno`,`tlm_tsdt`,`tlm_pno`,`tlm_specd`,`spbz_flgcd`),
  KEY `idx_fin_imtmc_acs_snd_tlm_10` (`tlm_tsdt`,`tlm_pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='즉시집금ACS발송전문';
