--
-- Table structure for table `ccm_lse_mntn_fct_info`
--

DROP TABLE IF EXISTS `ccm_lse_mntn_fct_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lse_mntn_fct_info` (
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
  `mntn_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '정비일련번호',
  `mntn_fctcd` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정비공장코드',
  `mntn_fctnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정비공장명',
  `mntn_fct_bprno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정비공장사업자등록번호',
  `mntn_fct_pyamt` decimal(17,2) DEFAULT NULL COMMENT '정비공장지급금액',
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
  UNIQUE KEY `pux_ccm_lse_mntn_fct_info_00` (`stdt`,`crdis_bsns_flgcd`,`crdis_sno`,`clm_sno`,`dm_sno`,`crdis_ins_knd_flgcd`,`plyno`,`victm_gd_sno`,`py_rscd`,`pydt`,`dt_py_rscd`,`dt_py_sno`,`mntn_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험신용정보_정비공장정보';
