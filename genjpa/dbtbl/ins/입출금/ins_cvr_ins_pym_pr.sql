--
-- Table structure for table `ins_cvr_ins_pym_pr`
--

DROP TABLE IF EXISTS `ins_cvr_ins_pym_pr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cvr_ins_pym_pr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `pym_seq` decimal(5,0) NOT NULL COMMENT '납입회차',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `crt_relpc_seqno` decimal(10,0) NOT NULL COMMENT '계약자관계자순번',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `woncr_cv_ap_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산적용보험료',
  `pyp_vald_strdt` date DEFAULT NULL COMMENT '분납유효시작일자',
  `pyp_vald_nddt` date DEFAULT NULL COMMENT '분납유효종료일자',
  `nds_ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '배서적용보험료',
  `woncv_nds_ap_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산배서적용보험료',
  `pym_pr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입예정상태코드',
  `trt_ap_cvr_prmsm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '특약적용담보보험료합계',
  `incm_prm_cr_seqno` decimal(5,0) DEFAULT NULL COMMENT '수입보험료발생순번',
  `cvr_spqu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보특성구분코드',
  `cvr_ba_trt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보기본특약구분코드',
  `trt_ap_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약적용담보코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cvr_ins_pym_pr_00` (`plyno`,`pym_seq`,`cvrcd`,`cvr_seqno`,`crt_relpc_seqno`,`mncd`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB AUTO_INCREMENT=2640 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='담보보험납입예정';
