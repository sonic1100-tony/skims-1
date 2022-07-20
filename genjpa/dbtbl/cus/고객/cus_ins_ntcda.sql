--
-- Table structure for table `cus_ins_ntcda`
--

DROP TABLE IF EXISTS `cus_ins_ntcda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ins_ntcda` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '접수번호',
  `ins_ntc_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험안내자료명',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자직원번호',
  `rq_dthms` datetime DEFAULT NULL COMMENT '요청일시',
  `da_pbwns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자료공유구분코드',
  `ntc_da_ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내자료보험종목코드',
  `ntc_da_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내자료종류코드',
  `rcpr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수자직원번호',
  `rcp_dthms` datetime DEFAULT NULL COMMENT '접수일시',
  `admno_grtps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리번호부여자직원번호',
  `admno_grt_dthms` datetime DEFAULT NULL COMMENT '관리번호부여일시',
  `da_adm_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자료관리년도',
  `da_adm_sno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자료관리일련번호',
  `fnl_prg_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종진행유형코드',
  `fnl_prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종결재상태코드',
  `doc_dcu_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공문문서종류코드',
  `doc_dcu_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공문문서년월',
  `doc_dcu_sno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공문문서일련번호',
  `da_ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자료삭제여부',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `cplt_hpdt` date DEFAULT NULL COMMENT '완료희망일자',
  `emeg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급여부',
  `self_chek_list_bjyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '본인체크리스트대상여부',
  `self_chek_list_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '본인체크리스트승인직원번호',
  `self_chek_list_apdt` date DEFAULT NULL COMMENT '본인체크리스트승인일자',
  `admno_us_strdt` date DEFAULT NULL COMMENT '관리번호사용시작일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_cus_ins_ntcda_00` (`rcpno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험안내자료';
