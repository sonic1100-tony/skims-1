--
-- Table structure for table `str_onsf_chk`
--

DROP TABLE IF EXISTS `str_onsf_chk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_onsf_chk` (
  `onsf_chk_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자체점검구분코드',
  `wrter_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '작성자기관코드',
  `wrt_dthms` datetime NOT NULL COMMENT '작성일시',
  `wrter_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '작성자직원번호',
  `chk_strdt` date NOT NULL COMMENT '점검시작일자',
  `chk_nddt` date NOT NULL COMMENT '점검종료일자',
  `fnl_prv_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '최종결재직원번호',
  `fnl_prvmn_psgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '최종결재자소속기관코드',
  `fnl_prvdt` date NOT NULL COMMENT '최종결재일자',
  `rgos_chk_rst_cn` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법규준수점검결과내용',
  `rgos_pout_mtt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '법규준수특이사항여부',
  `lwad_edu_xecdt` date DEFAULT NULL COMMENT '준법교육실시일자',
  `lwad_edu_prsn_cn` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '준법교육인원내용',
  `lwad_edu_main_cn` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '준법교육주요내용',
  `rgvlt_cn` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법규위반내용',
  `rgvlt_pout_mtt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '법규위반특이사항여부',
  `et_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타내용',
  `adx_file_ct` decimal(3,0) NOT NULL COMMENT '첨부파일건수',
  `lwad_edu_prsn_mtt` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '준법교육인원사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`onsf_chk_flgcd`,`wrter_orgcd`,`wrt_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자체점검';
