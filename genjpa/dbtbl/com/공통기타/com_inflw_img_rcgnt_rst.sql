--
-- Table structure for table `com_inflw_img_rcgnt_rst`
--

DROP TABLE IF EXISTS `com_inflw_img_rcgnt_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_inflw_img_rcgnt_rst` (
  `img_rcgnt_rst_seqno` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '이미지인식결과순번',
  `ogcy_img_file_elm_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원본이미지파일요소ID',
  `img_rcgnt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지인식구분코드',
  `img_rcgnt_rst` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지인식결과',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`img_rcgnt_rst_seqno`),
  KEY `idx_com_inflw_img_rcgnt_rst_10` (`ogcy_img_file_elm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='유입이미지인식결과';
