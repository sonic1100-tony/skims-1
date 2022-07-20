--
-- Table structure for table `igd_ltrm_gd_rt_info`
--

DROP TABLE IF EXISTS `igd_ltrm_gd_rt_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_ltrm_gd_rt_info` (
  `ltrm_rt_tabl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '장기요율테이블구분코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `ltrm_rt_tabnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '장기요율테이블명',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `rt_ap_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요율적용분류코드',
  `rt_ap_flgcd` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '요율적용구분코드',
  `rt_ap_untcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '요율적용단위코드',
  `prm_ap_untcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험료적용단위코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`ltrm_rt_tabl_flgcd`,`gdcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기상품요율정보';
