--
-- Table structure for table `igd_nlisr_asso_cvr_cn`
--

DROP TABLE IF EXISTS `igd_nlisr_asso_cvr_cn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_nlisr_asso_cvr_cn` (
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `isamt_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '가입금액코드',
  `cvr_spcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '담보특성코드',
  `gn_cncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보장내용코드',
  `cpyt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'COPAYMENT구분코드',
  `uiamt_stncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '공제금액기준코드',
  `cmp_trmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보상기간코드',
  `ward_diamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '병실차액구분코드',
  `npp_hlprm_napc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '국민건강보험미적용구분코드',
  `isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가입금액',
  `uiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '공제금액',
  `dcof_uiamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '의원공제금액',
  `hsp_uiamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '병원공제금액',
  `rcpr_org_uiamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '요양기관공제금액',
  `drfe_uiamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '약제비공제금액',
  `st_cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기준담보코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cvrcd`,`isamt_cd`,`cvr_spcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손보협회담보내용';
