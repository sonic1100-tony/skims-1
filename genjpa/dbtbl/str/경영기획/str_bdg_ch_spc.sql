--
-- Table structure for table `str_bdg_ch_spc`
--

DROP TABLE IF EXISTS `str_bdg_ch_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bdg_ch_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) NOT NULL COMMENT '신청순번',
  `ch_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '변경실체구분코드',
  `ch_spc_seqno` decimal(5,0) NOT NULL COMMENT '변경내역순번',
  `chamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경금액',
  `cy_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년월',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `bdg_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '예산기관코드',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_bdg_ch_spc_00` (`rqdt`,`rq_seqno`,`ch_ntty_flgcd`,`ch_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예산변경내역';
