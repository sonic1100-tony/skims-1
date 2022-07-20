--
-- Table structure for table `lse_cpent_stf`
--

DROP TABLE IF EXISTS `lse_cpent_stf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cpent_stf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `cpent_pstnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협력업체소속명',
  `bzof_arecd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사무소지역코드',
  `bsns_crr_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무경력내용',
  `et1_ctq_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타1자격증명',
  `et2_ctq_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타2자격증명',
  `cpent_stf_clpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협력업체직원직급코드',
  `cpent_stf_dtynm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협력업체직원직책명',
  `stf_mdrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '직원조정율',
  `stf_rqrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '직원의뢰율',
  `stf_pndct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '직원미결건수',
  `clmnv_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고조사유형코드',
  `thcp_rgt_orgcd` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당사등록기관코드',
  `bsns_crr_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무경력기간코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cpent_stf_00` (`stfno`),
  KEY `idx_lse_cpent_stf_10` (`ctmno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='협력업체직원';
