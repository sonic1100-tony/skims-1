--
-- Table structure for table `aud_odtm_adt_sts`
--

DROP TABLE IF EXISTS `aud_odtm_adt_sts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_odtm_adt_sts` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `adt_bsns_dsccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감사업무식별코드',
  `impdg_poct` decimal(10,0) DEFAULT NULL COMMENT '중요도점수',
  `odtm_adt_bjct` decimal(10,0) DEFAULT NULL COMMENT '상시감사대상건수',
  `wrkdt` date DEFAULT NULL COMMENT '작업일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_aud_odtm_adt_sts_00` (`stdt`,`orgcd`,`adt_bsns_dsccd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상시감사통계';
