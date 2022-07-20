--
-- Table structure for table `com_prnot_adm`
--

DROP TABLE IF EXISTS `com_prnot_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_prnot_adm` (
  `prnot_itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '출력물품목코드',
  `prnt_prnot_nm` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '프린트출력물명',
  `fax_prnot_nm` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스출력물명',
  `mail_prnot_nm` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일출력물명',
  `adinf_inp_scr_id` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추가정보입력화면ID',
  `prnot_log_crt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '출력물로그생성여부',
  `prnot_kornm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력물한글명',
  `cmpnt_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '컴포넌트명',
  `cmpnt_func_nm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '컴포넌트함수명',
  `crd_info_of_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보제공여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`prnot_itmcd`),
  KEY `idx_com_prnot_adm_10` (`prnt_prnot_nm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='출력물관리';
