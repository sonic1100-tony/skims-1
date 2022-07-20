--
-- Table structure for table `fin_mnth_cls_tot`
--

DROP TABLE IF EXISTS `fin_mnth_cls_tot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_mnth_cls_tot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `bsns_cfc` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '업무계수',
  `fina_cfc` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '재무계수',
  `cr_syscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생시스템코드',
  `cls_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '마감여부',
  `clsdt` date DEFAULT NULL COMMENT '마감일자',
  `dlr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리자직원번호',
  `rn_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원수보험금액',
  `re_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '출재보험금액',
  `rtro_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '수재보험금액',
  `memo` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`,`st_yymm`),
  UNIQUE KEY `pux_fin_mnth_cls_tot_00` (`st_yymm`,`ntacc_cd`,`ikd_grpcd`,`ins_imcd`)
) ENGINE=InnoDB AUTO_INCREMENT=511 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='월마감집계'
