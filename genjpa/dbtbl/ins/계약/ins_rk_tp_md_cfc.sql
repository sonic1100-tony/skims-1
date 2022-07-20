--
-- Table structure for table `ins_rk_tp_md_cfc`
--

DROP TABLE IF EXISTS `ins_rk_tp_md_cfc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rk_tp_md_cfc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '위험유형코드',
  `agmt_aqr_rt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '협정구득요율구분코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime DEFAULT NULL COMMENT '배서승인종료일시',
  `bfyy_woncv_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전년도원화환산보험료',
  `bfyy_rt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '전년도요율',
  `o1_cc_woncv_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '1차산출원화환산보험료',
  `o1_cc_rt` decimal(18,7) NOT NULL DEFAULT '0.0000000' COMMENT '1차산출요율',
  `prm_md_cfc` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '보험료조정계수',
  `rt_md_cfc` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '요율조정계수',
  `o2_cc_woncv_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '2차산출원화환산보험료',
  `o2_cc_rt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '2차산출요율',
  `ap_prm_md_cfc` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '적용보험료조정계수',
  `ap_rt_md_cfc` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '적용요율조정계수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rk_tp_md_cfc_00` (`plyno`,`rk_tpcd`,`agmt_aqr_rt_flgcd`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='위험유형조정계수';
