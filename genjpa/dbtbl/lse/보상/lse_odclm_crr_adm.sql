--
-- Table structure for table `lse_odclm_crr_adm`
--

DROP TABLE IF EXISTS `lse_odclm_crr_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_odclm_crr_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자명',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자식별번호',
  `wrtdt` date NOT NULL COMMENT '작성일자',
  `ch_crr_seqno` decimal(5,0) NOT NULL COMMENT '변경이력순번',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자기관코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `dat_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '데이터상태코드',
  `clmdt` date DEFAULT NULL COMMENT '사고일자',
  `clm_crr_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '사고이력내용',
  `inssw_prnt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사기제보여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_odclm_crr_adm_00` (`nrdnm`,`nrdps_dscno`,`wrtdt`,`ch_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='구사고이력관리';
