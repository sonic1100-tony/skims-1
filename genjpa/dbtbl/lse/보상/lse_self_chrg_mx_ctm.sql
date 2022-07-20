--
-- Table structure for table `lse_self_chrg_mx_ctm`
--

DROP TABLE IF EXISTS `lse_self_chrg_mx_ctm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_self_chrg_mx_ctm` (
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `st_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년도',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `md_ins_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료보험구분코드',
  `md_ins_isps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료보험가입자명',
  `prvdr_rel_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부양자관계구분코드',
  `mnth_hlt_prm` decimal(15,0) DEFAULT NULL COMMENT '월건강보험료',
  `cnf_mtd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인방법구분코드',
  `self_chrg_mx_sctcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '본인부담상한구간코드',
  `rcv_bjamt` decimal(15,0) NOT NULL COMMENT '환수대상금액',
  `rcamt` decimal(15,0) NOT NULL COMMENT '환수금액',
  `ic_sct_amt` decimal(15,0) DEFAULT NULL COMMENT '소득구간금액',
  `amt_mdf_bjyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금액수정대상여부',
  `mx_bj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상한대상구분코드',
  `rcv_crst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환수현황구분코드',
  `rtn_agr_clrq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반환약정징구구분코드',
  `nv_requ_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사의뢰여부',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) DEFAULT NULL COMMENT '청구순번',
  `befo_ntclt_snd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사전안내장발송여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ctmno`,`st_yr`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='본인부담상한고객';
