--
-- Table structure for table `cus_hngl_eng_mpp`
--

DROP TABLE IF EXISTS `cus_hngl_eng_mpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_hngl_eng_mpp` (
  `kornm` varchar(150) COLLATE utf8mb4_bin NOT NULL COMMENT '한글명',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `eng_name_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '영문이름명',
  `eng_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '영문성명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`kornm`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='한글영문매핑';
