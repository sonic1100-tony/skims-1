--
-- Table structure for table `igd_gd_ba_dcu_adm`
--

DROP TABLE IF EXISTS `igd_gd_ba_dcu_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_ba_dcu_adm` (
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `gd_ba_dcu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품기초서류구분코드',
  `type_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종구분코드',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `finm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일명',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ins_imcd`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품기초서류관리';
