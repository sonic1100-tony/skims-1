--
-- Table structure for table `lse_qust_slc_it`
--

DROP TABLE IF EXISTS `lse_qust_slc_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_qust_slc_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `qust_admno` bigint(20) NOT NULL COMMENT '질문관리번호',
  `qust_slc_itno` decimal(5,0) NOT NULL COMMENT '질문선택항목번호',
  `qust_slc_it_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질문선택항목내용',
  `org_answ_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원답안여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_qust_slc_it_00` (`qust_admno`,`qust_slc_itno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='질문선택항목';
