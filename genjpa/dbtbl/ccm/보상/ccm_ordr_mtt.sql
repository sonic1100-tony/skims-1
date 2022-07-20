--
-- Table structure for table `ccm_ordr_mtt`
--

DROP TABLE IF EXISTS `ccm_ordr_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_ordr_mtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `ordr_mtt_seqno` decimal(5,0) NOT NULL COMMENT '지시사항순번',
  `ord_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '명령구분코드',
  `ordr_mtt_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지시사항업무구분코드',
  `bsns_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무유형코드',
  `idctr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '지시자직원번호',
  `ordr_dt` date NOT NULL COMMENT '지시일자',
  `ordr_cn` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '지시내용',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `cplt_prdt` date DEFAULT NULL COMMENT '완료예정일자',
  `chrps_cnf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자확인여부',
  `cplt_dl_dthms` datetime DEFAULT NULL COMMENT '완료처리일시',
  `mng_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_ordr_mtt_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`ordr_mtt_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지시사항';
