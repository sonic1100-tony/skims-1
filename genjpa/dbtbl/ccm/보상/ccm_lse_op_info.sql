--
-- Table structure for table `ccm_lse_op_info`
--

DROP TABLE IF EXISTS `ccm_lse_op_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lse_op_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `crdis_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보원업무구분코드',
  `crdis_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보원일련번호',
  `clm_sno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '사고일련번호',
  `dm_sno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '청구일련번호',
  `crdis_ins_knd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보원보험종류구분코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `victm_gd_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피해자물일련번호',
  `py_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급사유코드',
  `pydt` date NOT NULL COMMENT '지급일자',
  `dt_py_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상세지급사유코드',
  `dt_py_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상세지급일련번호',
  `op_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수술일련번호',
  `mn_dgncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주진단코드',
  `sub_dgncd_1` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부진단코드1',
  `sub_dgncd_2` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부진단코드2',
  `sub_dgncd_3` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부진단코드3',
  `sub_dgncd_4` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부진단코드4',
  `rcpr_org_cd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요양기관코드',
  `rcpr_orgnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요양기관명',
  `rcpr_org_bprno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요양기관사업자등록번호',
  `opdt` date DEFAULT NULL COMMENT '수술일자',
  `opnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수술명',
  `da_stdt` date NOT NULL COMMENT '자료기준일자',
  `dl_rs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리사유구분코드',
  `crdis_da_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원자료처리구분코드',
  `tsdt` date DEFAULT NULL COMMENT '전송일자',
  `rcvdt` date DEFAULT NULL COMMENT '수신일자',
  `crdis_er_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원오류구분코드',
  `anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답코드',
  `er_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_lse_op_info_00` (`stdt`,`crdis_bsns_flgcd`,`crdis_sno`,`clm_sno`,`dm_sno`,`crdis_ins_knd_flgcd`,`plyno`,`victm_gd_sno`,`py_rscd`,`pydt`,`dt_py_rscd`,`dt_py_sno`,`op_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험신용정보_수술정보';
