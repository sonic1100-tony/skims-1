--
-- Table structure for table `ins_rins_prv_crr`
--

DROP TABLE IF EXISTS `ins_rins_prv_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_prv_crr` (
  `prv_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재대상구분코드',
  `prv_bjno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '결재대상번호',
  `prv_seqno` decimal(5,0) NOT NULL COMMENT '결재순번',
  `prv_dthms` datetime DEFAULT NULL COMMENT '결재일시',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '결재자직원번호',
  `prv_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재상태코드',
  `prv_xmn_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재검토내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`prv_bj_flgcd`,`prv_bjno`,`prv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험결재이력';
