--
-- Table structure for table `lse_qust`
--

DROP TABLE IF EXISTS `lse_qust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_qust` (
  `qust_admno` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '질문관리번호',
  `cnn_sbjcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련과목코드',
  `answ_tp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '답안유형구분코드',
  `qust_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질문내용',
  `sjtv_org_answ_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주관식원답안내용',
  `qust_img_adx_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질문이미지첨부여부',
  `qust_img_dcuno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질문이미지문서번호',
  `qust_srh_kywd` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질문검색키워드',
  `qust_bsns_file_key` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질문업무파일KEY',
  `qust_dt_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질문상세내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`qust_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='질문';
