--
-- Table structure for table `com_prvln_adm`
--

DROP TABLE IF EXISTS `com_prvln_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_prvln_adm` (
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `prlnm` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '결재선명',
  `prv_seqno` decimal(5,0) NOT NULL COMMENT '결재순번',
  `cmn_prv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '공통결재구분코드',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '결재자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stfno`,`prlnm`,`prv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='결재선관리';
