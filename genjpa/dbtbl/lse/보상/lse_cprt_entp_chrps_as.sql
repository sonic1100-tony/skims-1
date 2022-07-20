--
-- Table structure for table `lse_cprt_entp_chrps_as`
--

DROP TABLE IF EXISTS `lse_cprt_entp_chrps_as`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cprt_entp_chrps_as` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `entp_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '업체고객번호',
  `as_seqno` decimal(5,0) DEFAULT NULL COMMENT '배정순번',
  `as_rq_dthms` datetime DEFAULT NULL COMMENT '배정요청일시',
  `as_bj_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '배정대상여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cprt_entp_chrps_as_00` (`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='협력업체담당자배정';
