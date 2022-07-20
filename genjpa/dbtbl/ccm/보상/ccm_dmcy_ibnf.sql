--
-- Table structure for table `ccm_dmcy_ibnf`
--

DROP TABLE IF EXISTS `ccm_dmcy_ibnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dmcy_ibnf` (
  `py_crno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '지급발생번호',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `py_rslt_no` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '지급결의번호',
  `rltn_seqno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '연계순번',
  `dmcy_ibnf_py_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '휴면보험금지급상태코드',
  `py_st_chdt` date NOT NULL COMMENT '지급상태변경일자',
  `np_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미지급사유코드',
  `np_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미지급사유',
  `chr_cnrnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당센터명',
  `chr_cnrcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당센터코드',
  `chr_cnr_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당센터전화번호',
  `py_bj_rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급대상주민사업자번호',
  `py_bjnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '지급대상명',
  `dsdt` date NOT NULL COMMENT '결정일자',
  `ac_pydt` date DEFAULT NULL COMMENT '경리지급일자',
  `cr_vald_cr_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '자동차유효계약여부',
  `ltrm_vald_cr_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '장기유효계약여부',
  `gn_vald_cr_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '일반유효계약여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`py_crno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차휴면보험금';
