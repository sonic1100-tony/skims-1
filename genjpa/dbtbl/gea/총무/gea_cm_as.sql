--
-- Table structure for table `gea_cm_as`
--

DROP TABLE IF EXISTS `gea_cm_as`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_cm_as` (
  `cm_ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '통신원장번호',
  `as_ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '배정적용종료일자',
  `as_ap_strdt` date NOT NULL COMMENT '배정적용시작일자',
  `as_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배정대상구분코드',
  `as_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '배정기관코드',
  `as_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배정직원번호',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cm_ldgno`,`as_ap_nddt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통신배정';
