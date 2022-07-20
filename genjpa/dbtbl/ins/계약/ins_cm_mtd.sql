--
-- Table structure for table `ins_cm_mtd`
--

DROP TABLE IF EXISTS `ins_cm_mtd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cm_mtd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `cm_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수금방법코드',
  `slr_tf_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '급여이체직원번호',
  `crt_slrtf_stf_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자급여이체직원관계코드',
  `auto_tf_rqdc_ssno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동이체신청서발행번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cm_mtd_00` (`plyno`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB AUTO_INCREMENT=29973 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수금방법';
