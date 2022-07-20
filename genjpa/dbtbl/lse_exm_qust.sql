--
-- Table structure for table `lse_exm_qust`
--

DROP TABLE IF EXISTS `lse_exm_qust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_exm_qust` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `exm_ope_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '시험시행년월',
  `exm_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '시험순번',
  `exm_itm_seqno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '시험과목순번',
  `qust_no` decimal(5,0) NOT NULL COMMENT '질문번호',
  `qust_admno` bigint(20) NOT NULL COMMENT '질문관리번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_exm_qust_00` (`exm_ope_yymm`,`exm_seqno`,`exm_itm_seqno`,`qust_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='시험질문';
