--
-- Table structure for table `ins_cr_bsns_supt_adm`
--

DROP TABLE IF EXISTS `ins_cr_bsns_supt_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_bsns_supt_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cr_bsns_supt_flgcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '자동차업무지원구분코드',
  `adm_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '관리직원번호',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_bsns_supt_adm_00` (`cr_bsns_supt_flgcd`,`adm_stfno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차업무지원관리';
