--
-- Table structure for table `cmp_lw_adm_cmt_ap_rq`
--

DROP TABLE IF EXISTS `cmp_lw_adm_cmt_ap_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_lw_adm_cmt_ap_rq` (
  `lw_adm_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '소송관리년도',
  `adm_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '관리일련번호',
  `lw_adm_rcpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송관리접수번호',
  `cmp_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상담당자직원번호',
  `chr_cnr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당센터기관코드',
  `chr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당기관코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `lw_adm_tp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송관리유형구분코드',
  `lw_adm_main_issu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송관리주요쟁점구분코드',
  `lw_adm_bjnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송관리대상명',
  `lw_adm_prg_rkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송관리진행단계코드',
  `o1_aryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차승인여부',
  `o1_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차승인직원번호',
  `o1_apdt` date DEFAULT NULL COMMENT '1차승인일자',
  `o2_aryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차승인여부',
  `o2_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차승인직원번호',
  `o2_apdt` date DEFAULT NULL COMMENT '2차승인일자',
  `lw_adm_iq_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송관리심의승인구분코드',
  `iq_end_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심의종결직원번호',
  `end_chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종결담당자기관코드',
  `iq_enddt` date DEFAULT NULL COMMENT '심의종결일자',
  `adx_finm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일명',
  `adx_1_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부1파일명',
  `adx_2_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부2파일명',
  `adx_3_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부3파일명',
  `adx_4_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부4파일명',
  `adx_5_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부5파일명',
  `adx_6_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부6파일명',
  `adx_7_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부7파일명',
  `adx_8_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부8파일명',
  `adx_9_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부9파일명',
  `lw_adm_iq_ds_dcu_finm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송관리심의결정문서파일명',
  `lw_adm_iq_fnl_mdf_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송관리심의최종수정직원번호',
  `lw_adm_iq_fnl_mdfdt` date DEFAULT NULL COMMENT '소송관리심의최종수정일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`lw_adm_yr`,`adm_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소송관리위원회승인신청';
