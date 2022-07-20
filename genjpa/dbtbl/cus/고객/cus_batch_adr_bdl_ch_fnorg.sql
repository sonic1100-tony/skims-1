--
-- Table structure for table `cus_batch_adr_bdl_ch_fnorg`
--

DROP TABLE IF EXISTS `cus_batch_adr_bdl_ch_fnorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_batch_adr_bdl_ch_fnorg` (
  `fn_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '금융기관코드',
  `fn_org_arecd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '금융기관권역코드',
  `fn_orgnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '금융기관명',
  `srv_opndt` date DEFAULT NULL COMMENT '서비스개시일자',
  `srv_nddt` date DEFAULT NULL COMMENT '서비스종료일자',
  `wn_rcp_opndt` date DEFAULT NULL COMMENT '창구접수개시일자',
  `onl_rcp_opndt` date DEFAULT NULL COMMENT '온라인접수개시일자',
  `otcm_onl_accpt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사온라인수용여부',
  `onl_accpt_opndt` date DEFAULT NULL COMMENT '온라인수용개시일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`fn_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배치주소일괄변경금융기관';
