--
-- Table structure for table `gea_rtx_bk_mv`
--

DROP TABLE IF EXISTS `gea_rtx_bk_mv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_rtx_bk_mv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rtx_bkno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증책번호',
  `ap_nd_dthms` datetime NOT NULL DEFAULT '9999-12-31 00:00:00' COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `adm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '관리기관코드',
  `adm_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '관리직원번호',
  `us_apdt` date DEFAULT NULL COMMENT '사용승인일자',
  `us_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용승인직원번호',
  `mv_spc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이동내역구분코드',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_rtx_bk_mv_00` (`rtx_bkno`,`ap_nd_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영수증책이동';
