--
-- Table structure for table `com_img_info_dt`
--

DROP TABLE IF EXISTS `com_img_info_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_img_info_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `img_bsns_kyvl` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지업무키값',
  `img_dcu_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지문서유형코드',
  `dcu_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '문서일련번호',
  `img_agre_vl` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지동의값',
  `img_rgt_typcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지등록타입코드',
  `img_file_elm_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지파일요소ID',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_img_info_dt_00` (`img_bsns_kyvl`,`img_dcu_tpcd`,`dcu_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=33665 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='이미지정보상세';
