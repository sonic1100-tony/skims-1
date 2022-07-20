--
-- Table structure for table `ccm_siu_prnt`
--

DROP TABLE IF EXISTS `ccm_siu_prnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_siu_prnt` (
  `siu_prnt_admno` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'SIU제보관리번호',
  `ins_itm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목구분코드',
  `inssw_prnt_prg_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사기제보진행상태코드',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `rq_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청시간',
  `rqfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청직원번호',
  `offc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점포기관코드',
  `tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팀기관코드',
  `part_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부문기관코드',
  `nrdcd` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자코드',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `prnt_swdl_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보사기유형코드',
  `siu_prnt_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SIU제보내용',
  `prnt_chs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보채택구분코드',
  `inssw_prnt_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사기제보결과코드',
  `inssw_prnt_xmn_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사기제보검토내용',
  `inssw_prnt_rst_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사기제보결과내용',
  `adx_file_rltno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일연계번호',
  `dl_cpldt` date DEFAULT NULL COMMENT '처리완료일자',
  `dl_cplt_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리완료시간',
  `end_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종결여부',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `chrps_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자팀기관코드',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자기관코드',
  `nvr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사자직원번호',
  `nvr_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사자팀기관코드',
  `nvr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사자기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`siu_prnt_admno`)
) ENGINE=InnoDB AUTO_INCREMENT=202100002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SIU제보';
