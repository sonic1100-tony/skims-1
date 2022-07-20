--
-- Table structure for table `ins_krre_otcmg_mnamt`
--

DROP TABLE IF EXISTS `ins_krre_otcmg_mnamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_krre_otcmg_mnamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `krre_co_ins_seqno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '코리안리공동보험순번',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `cvr_rknm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보위험명',
  `tot_rn_ins_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전체원수보험가입금액',
  `tot_rn_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전체원수보험료',
  `tot_rn_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전체원수보험금액',
  `tot_rn_crpcs` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전체원수부대비',
  `pt_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참여회사코드',
  `qtrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '지분율',
  `rn_ins_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원수보험가입금액',
  `rn_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원수보험료',
  `rn_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원수보험금액',
  `rn_crpcs` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원수부대비',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_krre_otcmg_mnamt_00` (`krre_co_ins_seqno`,`mncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='코리안리타사간사화폐금액';
