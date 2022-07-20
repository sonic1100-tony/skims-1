--
-- Table structure for table `ccm_mntr_qust`
--

DROP TABLE IF EXISTS `ccm_mntr_qust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_mntr_qust` (
  `mntr_qust_tp_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모니터링질문유형코드',
  `adm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '관리년월',
  `mntr_qust_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모니터링질문구분코드',
  `mntr_qust_slc_tp_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모니터링질문선택유형코드',
  `mntr_qust_it_no` decimal(3,0) NOT NULL COMMENT '모니터링질문항목번호',
  `mntr_qust_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모니터링질문내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`mntr_qust_tp_cd`,`adm_yymm`,`mntr_qust_flgcd`,`mntr_qust_slc_tp_cd`,`mntr_qust_it_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='모니터링질문';
