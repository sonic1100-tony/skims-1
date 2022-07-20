--
-- Table structure for table `igd_clmcv_adm`
--

DROP TABLE IF EXISTS `igd_clmcv_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_clmcv_adm` (
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `clm_cvrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보명',
  `clmrl_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고결과분류코드',
  `lsetm_clm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사사고유형코드',
  `lsetm_py_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사지급유형코드',
  `cvr_atr_gpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보속성그룹코드',
  `crdis_ts_bj_yncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원전송대상여부코드',
  `crdis_py_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원지급사유코드',
  `ins_dvpns_ts_bj_yncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험개발원전송대상여부코드',
  `ins_dvpns_cvrcd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험개발원담보코드',
  `auto_ccbj_yncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동산출대상여부코드',
  `auto_cc_cal_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동산출계산방법코드',
  `dlynt_aprat_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지연이자적용이율구분코드',
  `etitx_tx_bj_yncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타소득세과세대상여부코드',
  `cmplm_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상한도적용구분코드',
  `cmplm_ap_untcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상한도적용단위코드',
  `cmp_lmamt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상한도금액구분코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`clm_cvrcd`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고담보관리';
