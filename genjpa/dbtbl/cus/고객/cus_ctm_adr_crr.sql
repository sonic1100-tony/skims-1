--
-- Table structure for table `cus_ctm_adr_crr`
--

DROP TABLE IF EXISTS `cus_ctm_adr_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_adr_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `adr_seqno` decimal(10,0) NOT NULL COMMENT '주소순번',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `adr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '주소구분코드',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `ri_or_lrdlp` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리/대량배달처',
  `mail_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일아이디',
  `mail_domn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일도메인',
  `ntncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국가코드',
  `ntnnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국가명',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `ovse_ctycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해외도시코드',
  `ovse_ctynm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해외도시명',
  `ovse_dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해외상세주소',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `gu_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구우편번호',
  `ch_dlno` varchar(14) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경처리번호',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `gu_fire_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구화재주소구분코드',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명',
  `undg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지하구분코드',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `nw_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규주소구분코드',
  `rt_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반송사유코드',
  `bf_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전우편번호',
  `road_nm_flgcd` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명구분코드',
  `bldnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물명',
  `bld_admno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물관리번호',
  `laco_dong_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법정동구분코드',
  `laco_dngnm` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법정동명',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분코드',
  `er_baadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류기본주소',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_adr_crr_00` (`ctmno`,`adr_seqno`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=859 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객주소이력';
