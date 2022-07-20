--
-- Table structure for table `fin_bdg_dp`
--

DROP TABLE IF EXISTS `fin_bdg_dp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bdg_dp` (
  `dsodt` date NOT NULL COMMENT '발의일자',
  `bdg_dpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '예산발의번호',
  `dp_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '발의기관코드',
  `dp_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '발의직원번호',
  `aact_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결의서구분코드',
  `dp_ar_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발의정리방법코드',
  `tmp_acc_dp_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '가계정발의여부',
  `ap_retn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인반려구분코드',
  `dldt` date DEFAULT NULL COMMENT '처리일자',
  `dl_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리기관코드',
  `dl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리직원번호',
  `crpca_ap_retn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인카드승인반려구분코드',
  `crpca_dldt` date DEFAULT NULL COMMENT '법인카드처리일자',
  `crpca_dl_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인카드처리기관코드',
  `crpca_dl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인카드처리직원번호',
  `bdg_dp_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예산발의상태코드',
  `std_notcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '표준적요코드',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `slpdt` date DEFAULT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `inp_scr_id` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '입력화면ID',
  `dl_inrno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래통합번호',
  `tpamt_ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가지급금원장번호',
  `dp_ldgno_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금원장번호종류코드',
  `dp_spc_ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금내역원장번호',
  `aact_inp_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결의서입력유형코드',
  `dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '입금금액',
  `ex_bj_dsodt` date DEFAULT NULL COMMENT '환입대상발의일자',
  `ex_bj_bdg_dpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환입대상예산발의번호',
  `prv_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재발생여부',
  `elec_evd_img_bsnno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자증빙이미지업무번호',
  `elec_prv_dcu_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자결재문서아이디',
  `reqst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청탁여부',
  `tmp_acc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가계정구분코드',
  `dp_mnt` decimal(3,0) DEFAULT NULL COMMENT '상각개월',
  `bsns_lclcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무대분류코드',
  `bsns_mdccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무중분류코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `prv_info_seqno` decimal(5,0) DEFAULT NULL COMMENT '결재정보순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dsodt`,`bdg_dpno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예산발의';
