--
-- Table structure for table `ins_rins_cm_info`
--

DROP TABLE IF EXISTS `ins_rins_cm_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_cm_info` (
  `rins_crano` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험계약번호',
  `rins_cr_ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험계약배서번호',
  `re_pftcm_flgcd` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '출재이익수수료구분코드',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `rins_cmrt` decimal(12,6) DEFAULT NULL COMMENT '재보험수수료율',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `crtm` decimal(3,0) NOT NULL COMMENT '계약기간',
  `mdf_dthms` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`rins_crano`,`rins_cr_ndsno`,`re_pftcm_flgcd`,`crtm`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험재보험수수료정보';
