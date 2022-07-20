--
-- Table structure for table `ccm_flt`
--

DROP TABLE IF EXISTS `ccm_flt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_flt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `rcp_nv_flt_seqno` decimal(3,0) NOT NULL COMMENT '접수조사과실순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `flt_ap_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '과실적용방법코드',
  `owcr_dfrn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자차대차구분코드',
  `atms_ba_fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT 'A차기본과실율',
  `btms_ba_fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT 'B차기본과실율',
  `owcr_fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '자차과실율',
  `dfrn_fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '대차과실율',
  `flt_rghmp` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과실약도',
  `flt_rghmp_file_pth` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과실약도파일경로',
  `flt_dcn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과실확정여부',
  `basts_flt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기초통계과실구분코드',
  `basts_wrt_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기초통계작성년월',
  `onw_flt_apgr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신구과실적용도구분코드',
  `flt_apgr` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과실적용도',
  `prio_ap_clmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우선적용사고코드',
  `clm_stt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고상황',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_flt_00` (`rcp_yymm`,`rcp_nv_seqno`,`rcp_nv_flt_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='과실';
