--
-- Table structure for table `lse_cpent_vl_st`
--

DROP TABLE IF EXISTS `lse_cpent_vl_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cpent_vl_st` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `clmnv_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고조사유형코드',
  `cpent_dv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '협력업체배당구분코드',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `st_vl_poct` decimal(5,0) DEFAULT NULL COMMENT '기준평가점수',
  `adx_1_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부1파일명',
  `entp_cpblt_wgt_rt` decimal(3,0) DEFAULT NULL COMMENT '업체역량가중치비율',
  `cvap_adm_wgt_rt` decimal(3,0) DEFAULT NULL COMMENT '민원관리가중치비율',
  `cscl_vl_wgt_rt` decimal(3,0) DEFAULT NULL COMMENT '건별평가가중치비율',
  `qlt_vl_wgt_rt` decimal(3,0) DEFAULT NULL COMMENT '품질평가가중치비율',
  `fxqtt_vl_wgt_rt` decimal(5,2) DEFAULT NULL COMMENT '정량평가가중치비율',
  `cpent_vl_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협력업체평가등급코드',
  `st_nddt` date DEFAULT NULL COMMENT '기준종료일자',
  `st_strdt` date DEFAULT NULL COMMENT '기준시작일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cpent_vl_st_00` (`st_yymm`,`ctmno`,`cprt_entp_seqno`,`clmnv_tpcd`,`cpent_dv_flgcd`,`ap_str_dthms`,`ap_nd_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='협력업체평가기준';
