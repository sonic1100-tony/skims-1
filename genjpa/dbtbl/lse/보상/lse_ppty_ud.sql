--
-- Table structure for table `lse_ppty_ud`
--

DROP TABLE IF EXISTS `lse_ppty_ud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ppty_ud` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `ppty_ud_rqsno` decimal(3,0) NOT NULL COMMENT '적부심사요청순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cr_chk_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약점검구분코드',
  `vlt_mtt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위반사항구분코드',
  `caure_yncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인과관계여부코드',
  `ibnf_py_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험금지급여부',
  `cn_doc_snd_yncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해지공문발송여부코드',
  `cn_pronm_rgsno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내용증명등기번호',
  `vlt_cnfdt` date DEFAULT NULL COMMENT '위반확인일자',
  `chbf_jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전직업코드',
  `chaf_jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후직업코드',
  `jb_chdt` date DEFAULT NULL COMMENT '직업변경일자',
  `jb_ch_vlt_cnf_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업변경위반확인방법코드',
  `chbf_drve_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전운전형태코드',
  `chaf_drve_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후운전형태코드',
  `drve_ty_chdt` date DEFAULT NULL COMMENT '운전형태변경일자',
  `drve_ty_ch_vlt_cnf_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전형태변경위반확인방법코드',
  `chbf_twhvc_drve_yncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전이륜차운전여부코드',
  `chaf_twhvc_drve_yncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후이륜차운전여부코드',
  `twhvc_drve_yn_chdt` date DEFAULT NULL COMMENT '이륜차운전여부변경일자',
  `twhvc_drve_yn_ch_vlt_cnf_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이륜차운전여부변경위반확인방법코드',
  `cr_vlt_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약위반내용',
  `cr_ch_mtt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약변경사항구분코드',
  `ch_stdt` date DEFAULT NULL COMMENT '변경기준일자',
  `rq_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청내용',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자직원번호',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `ppty_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적부처리구분코드',
  `ppty_dl_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적부처리상세구분코드',
  `ppty_retn_rs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적부반려사유구분코드',
  `ppty_retn_rs_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적부반려사유내용',
  `dl_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리의견',
  `ppty_chk_cpldt` date DEFAULT NULL COMMENT '적부점검완료일자',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`ppty_ud_rqsno`,`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='적부심사';
