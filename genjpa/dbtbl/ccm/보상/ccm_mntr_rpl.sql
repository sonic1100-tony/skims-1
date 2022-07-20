--
-- Table structure for table `ccm_mntr_rpl`
--

DROP TABLE IF EXISTS `ccm_mntr_rpl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_mntr_rpl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `mntr_qust_tp_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모니터링질문유형코드',
  `adm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '관리년월',
  `mntr_qust_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모니터링질문구분코드',
  `mntr_qust_slc_tp_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모니터링질문선택유형코드',
  `mntr_qust_it_no` decimal(3,0) NOT NULL COMMENT '모니터링질문항목번호',
  `mntr_rpl_it_no` decimal(3,0) NOT NULL COMMENT '모니터링답변항목번호',
  `mntr_rpl_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모니터링답변내용',
  `mntr_rpl_poct` decimal(3,0) DEFAULT NULL COMMENT '모니터링답변점수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_mntr_rpl_00` (`mntr_qust_tp_cd`,`adm_yymm`,`mntr_qust_flgcd`,`mntr_qust_slc_tp_cd`,`mntr_qust_it_no`,`mntr_rpl_it_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='모니터링답변';
