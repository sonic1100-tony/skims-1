--
-- Table structure for table `sec_psinf_o2_read_spc`
--

DROP TABLE IF EXISTS `sec_psinf_o2_read_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_psinf_o2_read_spc` (
  `rgtdt` date NOT NULL COMMENT '등록일자',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `psinf_o2_read_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보2차열람업무구분코드',
  `psinf_o2_read_use_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보2차열람용도구분코드',
  `psinf_o2_read_ta_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보2차열람이관구분코드',
  `psinf_o2_read_ta_kyvl` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보2차열람이관키값',
  `rltn_o2_read_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연계2차열람업무구분코드',
  `psinf_o2_read_ap_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보2차열람승인상태구분코드',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `rgt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록기관코드',
  `rgtr_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록자의견',
  `o1_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차결재직원번호',
  `o1_prvdt` date DEFAULT NULL COMMENT '1차결재일자',
  `o1_prv_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차결재시간',
  `o2_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차결재직원번호',
  `o2_prvdt` date DEFAULT NULL COMMENT '2차결재일자',
  `o2_prv_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차결재시간',
  `o2_prv_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차결재의견',
  `o3_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차결재직원번호',
  `o3_prvdt` date DEFAULT NULL COMMENT '3차결재일자',
  `o3_prv_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차결재시간',
  `o3_prv_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차결재의견',
  `adx_1_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부1파일경로',
  `adx_2_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부2파일경로',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rgtdt`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개인정보2차열람내역';
