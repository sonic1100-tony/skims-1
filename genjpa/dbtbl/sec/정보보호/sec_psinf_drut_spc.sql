--
-- Table structure for table `sec_psinf_drut_spc`
--

DROP TABLE IF EXISTS `sec_psinf_drut_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_psinf_drut_spc` (
  `wrkdt` date NOT NULL COMMENT '작업일자',
  `tabnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '테이블명',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `psinf_drut_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보파기상태코드',
  `file_crt_ct` decimal(10,0) DEFAULT NULL COMMENT '파일생성건수',
  `dat_ta_ct` decimal(10,0) DEFAULT NULL COMMENT '데이터이관건수',
  `dat_ersct` decimal(10,0) DEFAULT NULL COMMENT '데이터삭제건수',
  `o1_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차결재직원번호',
  `o1_prvdt` date DEFAULT NULL COMMENT '1차결재일자',
  `o1_prv_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차결재시간',
  `o2_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차결재직원번호',
  `o2_prvdt` date DEFAULT NULL COMMENT '2차결재일자',
  `o2_prv_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차결재시간',
  `o3_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차결재직원번호',
  `o3_prvdt` date DEFAULT NULL COMMENT '3차결재일자',
  `o3_prv_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차결재시간',
  `o4_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4차결재직원번호',
  `o4_prvdt` date DEFAULT NULL COMMENT '4차결재일자',
  `o4_prv_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4차결재시간',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`wrkdt`,`tabnm`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개인정보파기내역';
