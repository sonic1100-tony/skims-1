--
-- Table structure for table `sam_car_gn_rspamt_adm`
--

DROP TABLE IF EXISTS `sam_car_gn_rspamt_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam_car_gn_rspamt_adm` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `ikd_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종분류코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `relpc_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계자식별번호구분코드',
  `crt_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자주민번호',
  `crt_mtt_ch_seq` decimal(3,0) DEFAULT NULL COMMENT '계약자사항변경회차',
  `crt_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자성명',
  `bzns_catcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업용차종코드',
  `carno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호구분코드',
  `carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호',
  `rpamt_cc_cr_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '책임액산출차량용도코드',
  `shtm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단기구분코드',
  `sng_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단독구분코드',
  `gn_co_obj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반공동물건구분코드',
  `trn_crs_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '육성과정여부',
  `dh_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지점기관코드',
  `dh_offc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급점포기관코드',
  `dher_empno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급자사번',
  `cer_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집자직원번호',
  `ntc_mtd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내방법구분코드',
  `ntc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내직원번호',
  `ntc_prm` decimal(15,0) DEFAULT NULL COMMENT '안내보험료',
  `nml_ar_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정상연체구분코드',
  `dp_prdt` date DEFAULT NULL COMMENT '입금예정일자',
  `endt` date DEFAULT NULL COMMENT '만기일자',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `pyp_pym_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분납납입구분코드',
  `pym_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입방법코드',
  `pym_seq` decimal(5,0) DEFAULT NULL COMMENT '납입회차',
  `cm_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수금방법코드',
  `prv_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재방법코드',
  `rvdt` date DEFAULT NULL COMMENT '수납일자',
  `pym_grcdt` date DEFAULT NULL COMMENT '납입유예일자',
  `dp_impr_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금불가사유코드',
  `rpamt_dcn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '책임액확정여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`plyno`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차일반책임액관리'
