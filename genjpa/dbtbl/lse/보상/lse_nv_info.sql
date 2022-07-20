--
-- Table structure for table `lse_nv_info`
--

DROP TABLE IF EXISTS `lse_nv_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_nv_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `nv_rst_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '조사결과구분코드',
  `bn_mang_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업종운영기간코드',
  `fir_prnt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '방화제보여부',
  `db_ins_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중복보험여부',
  `debt_xcs_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부채과다여부',
  `whol_ord_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전부명령여부',
  `firtm_rsdt_xstn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화재시거주자존재여부',
  `ibnf_dmrgt_trsf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험금청구권양도여부',
  `nv_eaon_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사기피여부',
  `self_is_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자진가입여부',
  `dcufr_crr_dubt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서위조경력의심여부',
  `atnd_bn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유의업종여부',
  `nw_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규계약여부',
  `firpl_twpnt_abov_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발화원두곳이상여부',
  `fct_psbsn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공장휴업여부',
  `ibnf_sz_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험금압류여부',
  `nisi_aprst_fir_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국과수감정결과방화여부',
  `brdwn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전소여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_nv_info_00` (`rcp_yymm`,`rcp_nv_seqno`,`plyno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='조사정보';
