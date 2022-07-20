--
-- Table structure for table `aud_nsp_bj`
--

DROP TABLE IF EXISTS `aud_nsp_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_nsp_bj` (
  `adt_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '감사년도',
  `adt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감사구분코드',
  `adtno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '감사번호',
  `adt_seqno` decimal(5,0) NOT NULL COMMENT '감사순번',
  `adt_bj_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사대상기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`adt_yr`,`adt_flgcd`,`adtno`,`adt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='검사대상';
