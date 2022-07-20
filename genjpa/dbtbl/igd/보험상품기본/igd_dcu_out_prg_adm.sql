--
-- Table structure for table `igd_dcu_out_prg_adm`
--

DROP TABLE IF EXISTS `igd_dcu_out_prg_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_dcu_out_prg_adm` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '담보코드',
  `prg_cr_tycd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '문구계약형태코드',
  `prg_adm_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '문구관리대상구분코드',
  `prg_use_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '문구용도구분코드',
  `ss_frmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발행양식코드',
  `prg_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '문구종류코드',
  `pym_cyccd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '납입주기코드',
  `ndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '만기코드',
  `drve_tycd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '운전형태코드',
  `nd_rtamt_py_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '만기환급금지급유형코드',
  `mw_py_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '중도지급방법코드',
  `prg_seq_no` decimal(5,0) NOT NULL COMMENT '문구회차번호',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `prg_symb` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문구기호',
  `prg_cn` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '문구내용',
  `scr_idc_ordr` decimal(5,0) NOT NULL COMMENT '화면표시순서',
  `ad_prg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추가문구구분코드',
  `ad_prg_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추가문구내용',
  `out_pst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력위치구분코드',
  `cvr_rel_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보관계구분코드',
  `pyamt_prg_adm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급금액문구관리여부',
  `gn_cn_prg_seqno` decimal(5,0) DEFAULT NULL COMMENT '보장내용문구순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`cvrcd`,`prg_cr_tycd`,`prg_adm_bj_flgcd`,`prg_use_flgcd`,`ss_frmcd`,`prg_kndcd`,`pym_cyccd`,`ndcd`,`drve_tycd`,`nd_rtamt_py_tpcd`,`mw_py_mtdcd`,`prg_seq_no`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='문서출력문구관리';
