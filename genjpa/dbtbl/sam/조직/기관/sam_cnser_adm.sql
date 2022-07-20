--
-- Table structure for table `sam_cnser_adm`
--

DROP TABLE IF EXISTS `sam_cnser_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam_cnser_adm` (
  `admr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '관리자직원번호',
  `chdt` date NOT NULL COMMENT '변경일자',
  `supt_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지원담당자직원번호',
  `sb_admr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대체관리자직원번호',
  `admr_wrk_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리자근무상태코드',
  `admr_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리자업무구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`admr_stfno`,`chdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상담원관리';
