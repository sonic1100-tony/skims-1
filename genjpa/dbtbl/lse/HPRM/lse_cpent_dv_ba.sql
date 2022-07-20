--
-- Table structure for table `lse_cpent_dv_ba`
--

DROP TABLE IF EXISTS `lse_cpent_dv_ba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cpent_dv_ba` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `clmnv_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고조사유형코드',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `thcp_rgt_orgcd` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '당사등록기관코드',
  `dv_xcpt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당제외여부',
  `dv_xcpt_strdt` date DEFAULT NULL COMMENT '배당제외시작일자',
  `dv_xcpt_nddt` date DEFAULT NULL COMMENT '배당제외종료일자',
  `dv_xcpt_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당제외사유',
  `arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지역코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cpent_dv_ba_00` (`ctmno`,`cprt_entp_seqno`,`clmnv_tpcd`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='협력업체배당기본';
