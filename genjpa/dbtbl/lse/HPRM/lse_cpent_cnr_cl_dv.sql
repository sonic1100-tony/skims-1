--
-- Table structure for table `lse_cpent_cnr_cl_dv`
--

DROP TABLE IF EXISTS `lse_cpent_cnr_cl_dv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cpent_cnr_cl_dv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `clmnv_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고조사유형코드',
  `cpent_dv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '협력업체배당구분코드',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `clmnv_cmp_cnr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '사고조사보상센터기관코드',
  `clmnv_cpent_vl_grdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '사고조사협력업체평가등급코드',
  `dv_lmict` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '배당제한건수',
  `dv_plnct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '배당계획건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cpent_cnr_cl_dv_00` (`st_yymm`,`ctmno`,`cprt_entp_seqno`,`clmnv_tpcd`,`cpent_dv_flgcd`,`ap_nd_dthms`,`ap_str_dthms`,`clmnv_cmp_cnr_orgcd`,`clmnv_cpent_vl_grdcd`),
  KEY `idx_lse_cpent_cnr_cl_dv_10` (`ctmno`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='협력업체센터별배당';
