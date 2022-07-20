--
-- Table structure for table `ins_cr_udrtk_are_rt`
--

DROP TABLE IF EXISTS `ins_cr_udrtk_are_rt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_udrtk_are_rt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `rpdt` date NOT NULL COMMENT '영수일자',
  `ins_itm_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목소분류코드',
  `pstno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '우편번호',
  `bdin1_rldgr` decimal(20,14) DEFAULT NULL COMMENT '대인1상대도',
  `bdin2_rldgr` decimal(20,14) DEFAULT NULL COMMENT '대인2상대도',
  `prdm_rldgr` decimal(20,14) DEFAULT NULL COMMENT '대물상대도',
  `obi_sbinj_rldgr` decimal(20,14) DEFAULT NULL COMMENT '자손자상상대도',
  `unins_rldgr` decimal(20,14) DEFAULT NULL COMMENT '무보험상대도',
  `owcr_rldgr` decimal(20,14) DEFAULT NULL COMMENT '자차상대도',
  `bdin1_md_rt` decimal(20,14) DEFAULT NULL COMMENT '대인1조정율',
  `bdin2_md_rt` decimal(20,14) DEFAULT NULL COMMENT '대인2조정율',
  `prdm_md_rt` decimal(20,14) DEFAULT NULL COMMENT '대물조정율',
  `obi_sbinj_md_rt` decimal(20,14) DEFAULT NULL COMMENT '자손자상조정율',
  `unins_md_rt` decimal(20,14) DEFAULT NULL COMMENT '무보험조정율',
  `owcr_md_rt` decimal(20,14) DEFAULT NULL COMMENT '자차조정율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_udrtk_are_rt_00` (`stdt`,`rpdt`,`ins_itm_smccd`,`pstno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차인수지역요율';
