--
-- Table structure for table `str_inctl`
--

DROP TABLE IF EXISTS `str_inctl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_inctl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `vlotr_strdt` date DEFAULT NULL COMMENT '평가대상기간시작일자',
  `vlotr_nddt` date DEFAULT NULL COMMENT '평가대상기간종료일자',
  `vl_strdt` date DEFAULT NULL COMMENT '평가시작일자',
  `vl_nddt` date DEFAULT NULL COMMENT '평가종료일자',
  `inctl_es_rkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제설정단계코드',
  `ap_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인요청직원번호',
  `ap_rq_dthms` datetime DEFAULT NULL COMMENT '승인요청일시',
  `o1_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차승인직원번호',
  `o1_ap_dthms` datetime DEFAULT NULL COMMENT '1차승인일시',
  `o2_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차승인직원번호',
  `o2_ap_dthms` datetime DEFAULT NULL COMMENT '2차승인일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_inctl_00` (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='내부통제';
