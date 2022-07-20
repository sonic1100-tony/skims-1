--
-- Table structure for table `com_inflw_img_mdf_spc`
--

DROP TABLE IF EXISTS `com_inflw_img_mdf_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_inflw_img_mdf_spc` (
  `img_file_mdf_seqno` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '이미지파일수정순번',
  `img_file_elm_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지파일요소ID',
  `fnl_mdfdt` date NOT NULL COMMENT '최종수정일자',
  `cmnt_img_cn` longtext COLLATE utf8mb4_bin NOT NULL COMMENT '주석이미지내용',
  `wrkr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '작업자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`img_file_mdf_seqno`),
  KEY `idx_com_inflw_img_mdf_spc_10` (`img_file_elm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='유입이미지수정내역';
