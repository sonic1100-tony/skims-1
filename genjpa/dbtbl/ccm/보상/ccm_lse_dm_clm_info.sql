--
-- Table structure for table `ccm_lse_dm_clm_info`
--

DROP TABLE IF EXISTS `ccm_lse_dm_clm_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lse_dm_clm_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `crdis_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보원업무구분코드',
  `crdis_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보원일련번호',
  `clm_sno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '사고일련번호',
  `dm_sno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '청구일련번호',
  `nrdps_psn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자개인여부',
  `nrdps_rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자주민사업자번호',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `nrdps_nw_pstno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자신우편번호',
  `nrdps_gu_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자구우편번호',
  `nrdps_info_of_agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자정보제공동의여부',
  `clm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고내용',
  `clm_dthms` datetime NOT NULL COMMENT '사고일시',
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `clm_are_nw_pstno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고지역신우편번호',
  `clm_are_gu_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고지역구우편번호',
  `drv_no_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전자번호주민번호',
  `drvnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전자명',
  `drv_nrdps_rel_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전자피보험자관계구분코드',
  `drv_info_of_agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전자정보제공동의여부',
  `nrd_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험차량번호',
  `clm_flt_rt` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고과실비율',
  `crdis_obj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원물건구분코드',
  `crdis_oj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원목적물구분코드',
  `oj_nw_pstno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목적물신우편번호',
  `oj_gu_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목적물구우편번호',
  `oj_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목적물주소',
  `crdis_clm_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원사고유형코드',
  `da_stdt` date DEFAULT NULL COMMENT '자료기준일자',
  `dl_rs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리사유구분코드',
  `tsdt` date DEFAULT NULL COMMENT '전송일자',
  `rcvdt` date DEFAULT NULL COMMENT '수신일자',
  `crdis_er_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원오류구분코드',
  `anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답코드',
  `er_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류내용',
  `crdis_da_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원자료처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_lse_dm_clm_info_00` (`stdt`,`crdis_bsns_flgcd`,`crdis_sno`,`clm_sno`,`dm_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험신용정보_청구사고정보';
