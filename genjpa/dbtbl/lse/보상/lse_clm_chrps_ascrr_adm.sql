--
-- Table structure for table `lse_clm_chrps_ascrr_adm`
--

DROP TABLE IF EXISTS `lse_clm_chrps_ascrr_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_chrps_ascrr_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `asdt` date NOT NULL COMMENT '배정일자',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `entp_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '업체고객번호',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `as_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배정대상여부',
  `stfnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원명',
  `entnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업체명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_chrps_ascrr_adm_00` (`asdt`,`crr_seqno`,`stfno`,`entp_ctmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고담당자배정이력관리';
