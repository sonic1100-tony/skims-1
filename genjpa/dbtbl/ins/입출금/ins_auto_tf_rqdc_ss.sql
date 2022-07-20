--
-- Table structure for table `ins_auto_tf_rqdc_ss`
--

DROP TABLE IF EXISTS `ins_auto_tf_rqdc_ss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_auto_tf_rqdc_ss` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `auto_tf_rqdc_ssno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '자동이체신청서발행번호',
  `ssdt` date NOT NULL COMMENT '발행일자',
  `ss_seqno` decimal(3,0) NOT NULL COMMENT '발행순번',
  `ss_circ` decimal(3,0) NOT NULL COMMENT '발행부수',
  `crrnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '계약자명',
  `crt_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '계약자주민번호',
  `dlr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '처리자직원번호',
  `cnn_scr_id` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '관련화면ID',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `scan_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '스캔대상여부',
  `scan_cplt_dthms` datetime DEFAULT NULL COMMENT '스캔완료일시',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `ers_dlr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제처리자직원번호',
  `thrps_wrcs_outbj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제3자동의서출력대상여부',
  `rqdc_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청서유형코드',
  `cm_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수금방법코드',
  `slr_tf_bj_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '급여이체대상직원번호',
  `auto_tf_cg_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동이체요금종류코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `tf_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체유형코드',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주명',
  `crt_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자관계코드',
  `nt_tf_hpdy_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이자이체희망일코드',
  `epay_peri_stm_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '페이정기결제번호',
  `kko_pay_acc_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카카오PAY계정ID',
  `cral_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화번호',
  `brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생년월일',
  `bdl_tf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄이체여부',
  `evd_da_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙자료구분코드',
  `evd_da_dsc_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙자료식별값',
  `evd_da_save_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙자료저장경로코드',
  `ch_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경내용',
  `rtn_act_rgt_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환급계좌등록구분코드',
  `epay_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '페이구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_auto_tf_rqdc_ss_00` (`auto_tf_rqdc_ssno`),
  KEY `idx_ins_auto_tf_rqdc_ss_10` (`crt_rsno`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동이체신청서발행';
