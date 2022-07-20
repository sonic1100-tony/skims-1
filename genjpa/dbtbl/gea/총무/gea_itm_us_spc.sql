--
-- Table structure for table `gea_itm_us_spc`
--

DROP TABLE IF EXISTS `gea_itm_us_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_itm_us_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관실체구분코드',
  `adm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '관리기관코드',
  `itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '품목코드',
  `usdt` date NOT NULL COMMENT '사용일자',
  `us_seqno` decimal(5,0) NOT NULL COMMENT '사용순번',
  `itm_us_qant` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '품목사용수량',
  `us_rgt_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '사용등록직원번호',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_itm_us_spc_00` (`org_ntty_flgcd`,`adm_orgcd`,`itmcd`,`usdt`,`us_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='품목사용내역';
