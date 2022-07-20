--
-- Table structure for table `ins_rins_img_crt_crr`
--

DROP TABLE IF EXISTS `ins_rins_img_crt_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_img_crt_crr` (
  `rins_dcu_no` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험문서번호',
  `rcv_plac_gp_seqno` decimal(5,0) NOT NULL COMMENT '수신처그룹순번',
  `img_crt_seqno` decimal(3,0) NOT NULL COMMENT '이미지생성순번',
  `bsnno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무번호',
  `dcu_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '문서분류코드',
  `dcu_xpnm` varchar(300) COLLATE utf8mb4_bin NOT NULL COMMENT '문서설명',
  `bsns_file_key` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '업무파일KEY',
  `cr_clm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약사고구분코드',
  `img_crt_cplt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지생성완료여부',
  `prnt_prnot_nm` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '프린트출력물명',
  `pmtr_1` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터1',
  `pmtr_2` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터2',
  `pmtr_3` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터3',
  `pmtr_4` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터4',
  `pmtr_5` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터5',
  `pmtr_6` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터6',
  `pmtr_7` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터7',
  `pmtr_8` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터8',
  `pmtr_9` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터9',
  `pmtr_10` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터10',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rins_dcu_no`,`rcv_plac_gp_seqno`,`img_crt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험이미지생성이력';
