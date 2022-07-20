--
-- Table structure for table `igd_srp_ap_st`
--

DROP TABLE IF EXISTS `igd_srp_ap_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_srp_ap_st` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '위험유형코드',
  `obj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '물건구분코드',
  `srp_ap_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SRP적용기준구분코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `srp_ap_stamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT 'SRP적용기준금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`rk_tpcd`,`obj_flgcd`,`srp_ap_st_flgcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SRP적용기준';
