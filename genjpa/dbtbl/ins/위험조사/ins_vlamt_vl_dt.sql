--
-- Table structure for table `ins_vlamt_vl_dt`
--

DROP TABLE IF EXISTS `ins_vlamt_vl_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_vlamt_vl_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `vlamt_vl_no` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가액평가번호',
  `vlamt_vl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가액평가구분코드',
  `vlamt_vl_acccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가액평가계정코드',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `bzwpl_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업장명',
  `ntacc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목명',
  `asenm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자산명',
  `cq_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취득년도',
  `cqamt` decimal(15,0) DEFAULT NULL COMMENT '취득금액',
  `xp_re_sply_vlamt` decimal(15,0) DEFAULT NULL COMMENT '예상재조달가액',
  `xp_crnt_vlamt` decimal(15,0) DEFAULT NULL COMMENT '예상현재가액',
  `isamt` decimal(17,2) DEFAULT NULL COMMENT '가입금액',
  `bldnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물명',
  `sns_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건축년도',
  `bld_ttare` decimal(17,2) DEFAULT NULL COMMENT '건물연면적',
  `atch_equ_rv_rt` decimal(7,2) DEFAULT NULL COMMENT '부속설비보정비율',
  `ad_rv_rt` decimal(7,2) DEFAULT NULL COMMENT '추가보정비율',
  `btpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업종코드',
  `bld_use` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물용도',
  `bld_str_dtcn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물구조세부내용',
  `bldno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물번호',
  `st_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기준년도',
  `gdprc_ndx_rt` decimal(12,6) DEFAULT NULL COMMENT '물가지수율',
  `nwcon_unprc` decimal(15,0) DEFAULT NULL COMMENT '신축단가',
  `rdt_dprt` decimal(7,2) DEFAULT NULL COMMENT '감가상각율',
  `rvrt` decimal(7,2) DEFAULT NULL COMMENT '보정율',
  `su_rt` decimal(12,6) DEFAULT NULL COMMENT '잔존율',
  `equ_rt` decimal(7,2) DEFAULT NULL COMMENT '설비율',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_vlamt_vl_dt_00` (`vlamt_vl_no`,`vlamt_vl_flgcd`,`vlamt_vl_acccd`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='가액평가상세';
