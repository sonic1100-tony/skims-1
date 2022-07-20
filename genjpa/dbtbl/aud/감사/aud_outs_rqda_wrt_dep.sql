--
-- Table structure for table `aud_outs_rqda_wrt_dep`
--

DROP TABLE IF EXISTS `aud_outs_rqda_wrt_dep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_outs_rqda_wrt_dep` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `adt_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '감사년월',
  `adt_seqno` decimal(5,0) NOT NULL COMMENT '감사순번',
  `adt_bj_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '감사대상기관코드',
  `prst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제출여부',
  `adt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사직원번호',
  `rcvdt` date DEFAULT NULL COMMENT '수신일자',
  `tsdt` date DEFAULT NULL COMMENT '전송일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_aud_outs_rqda_wrt_dep_00` (`adt_yymm`,`adt_seqno`,`adt_bj_orgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='외부요청자료작성부서';
