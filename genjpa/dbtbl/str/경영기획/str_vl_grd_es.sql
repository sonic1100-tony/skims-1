--
-- Table structure for table `str_vl_grd_es`
--

DROP TABLE IF EXISTS `str_vl_grd_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_vl_grd_es` (
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `inctl_vl_grdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가등급코드',
  `grd_poct` decimal(3,0) NOT NULL COMMENT '등급점수',
  `st_strvl` decimal(5,2) NOT NULL COMMENT '기준시작값',
  `st_ndvl` decimal(5,2) NOT NULL COMMENT '기준종료값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`seq`,`inctl_vl_grdcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='평가등급설정';
