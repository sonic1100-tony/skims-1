--
-- Table structure for table `cmp_etcs_mgm_qust`
--

DROP TABLE IF EXISTS `cmp_etcs_mgm_qust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_etcs_mgm_qust` (
  `bj_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '대상년월',
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `etcs_mgm_qust_no` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '윤리경영설문번호',
  `etcs_mgm_qust_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '윤리경영설문업무구분코드',
  `etcs_mgm_qust_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '윤리경영설문내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bj_yymm`,`seq`,`etcs_mgm_qust_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='윤리경영설문';
