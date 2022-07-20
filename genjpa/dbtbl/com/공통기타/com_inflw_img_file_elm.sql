--
-- Table structure for table `com_inflw_img_file_elm`
--

DROP TABLE IF EXISTS `com_inflw_img_file_elm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_inflw_img_file_elm` (
  `inflw_img_file_seqno` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '유입이미지파일순번',
  `ogcy_img_file_elm_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원본이미지파일요소ID',
  `img_file_elm_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지파일요소ID',
  `img_file_dl_rstcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지파일처리결과코드',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`inflw_img_file_seqno`),
  KEY `idx_com_inflw_img_file_elm_10` (`ogcy_img_file_elm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='유입이미지파일요소';
