--
-- Table structure for table `com_inflw_img_ch_spc`
--

DROP TABLE IF EXISTS `com_inflw_img_ch_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_inflw_img_ch_spc` (
  `file_ch_seqno` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '파일변경순번',
  `ogcy_img_file_elm_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원본이미지파일요소ID',
  `img_dcu_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지문서유형코드',
  `dcu_titl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서제목',
  `wrkr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '작업자직원번호',
  `chn_sys_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '채널시스템구분코드',
  `chdt` date NOT NULL COMMENT '변경일자',
  `ch_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경내용',
  `img_ch_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지변경구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`file_ch_seqno`),
  KEY `idx_com_inflw_img_ch_spc_10` (`ogcy_img_file_elm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='유입이미지변경내역';
