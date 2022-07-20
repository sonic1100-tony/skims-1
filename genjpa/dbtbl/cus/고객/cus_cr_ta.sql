--
-- Table structure for table `cus_cr_ta`
--

DROP TABLE IF EXISTS `cus_cr_ta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_cr_ta` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `fnl_pym_seq` decimal(5,0) DEFAULT NULL COMMENT '최종납입회차',
  `fr_dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최초취급직원번호',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `befo_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이전직원번호',
  `ps_crct` decimal(10,0) DEFAULT NULL COMMENT '보유계약건수',
  `self_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자기계약여부',
  `cvap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원여부',
  `doncl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '두낫콜여부',
  `cm_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수금방법코드',
  `dmgrt` decimal(15,7) DEFAULT NULL COMMENT '손해율',
  `rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청직원번호',
  `rqno` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청번호',
  `exc_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실행결과코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_cr_ta_00` (`st_yymm`,`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객계약이관';
