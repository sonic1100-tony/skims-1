--
-- Table structure for table `str_gd_srvc_dl_cr`
--

DROP TABLE IF EXISTS `str_gd_srvc_dl_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_gd_srvc_dl_cr` (
  `dl_crano` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '거래계약번호',
  `dl_crano_crr_seqno` decimal(3,0) NOT NULL COMMENT '거래계약번호이력순번',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `cr_rltcp_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약상대방코드',
  `cr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '계약기관코드',
  `cr_adm_chr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '계약관리담당직원번호',
  `by_sl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '매입매출구분코드',
  `crnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '계약명',
  `cr_strdt` date NOT NULL COMMENT '계약시작일자',
  `cr_nddt` date NOT NULL COMMENT '계약종료일자',
  `naamt` decimal(15,0) NOT NULL COMMENT '계약금액',
  `dl_oj_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '거래목적내용',
  `cnd_cn` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '조건내용',
  `inr_ordg_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '통합발주여부',
  `crdm_wrt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '계약서작성여부',
  `law_cnst_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '법률자문여부',
  `cr_auto_rnw_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '계약자동갱신여부',
  `cr_atrnw_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자동갱신사유코드',
  `cr_nd_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약종료사유코드',
  `crcc_metcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약체결방식코드',
  `befo_ap_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '사전승인여부',
  `bfrnw_dl_crano` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '갱신전거래계약번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dl_crano`,`dl_crano_crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품용역거래계약';
