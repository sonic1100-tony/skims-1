--
-- Table structure for table `ins_xol_event_clm_dm`
--

DROP TABLE IF EXISTS `ins_xol_event_clm_dm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_xol_event_clm_dm` (
  `xol_event_clm_dmno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT 'XOL이벤트사고청구번호',
  `xol_event_clmno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT 'XOL이벤트사고번호',
  `xol_cuttm_py_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT 'XOL당회지급보험금액',
  `xol_woncv_cuttm_pibam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT 'XOL원화환산당회지급보험금액',
  `xol_remn_xiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT 'XOL잔여추산금액',
  `xol_bj_pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT 'XOL대상지급금액',
  `xol_woncv_bj_pyamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT 'XOL원화환산대상지급금액',
  `xol_bj_remn_xiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT 'XOL대상잔여추산금액',
  `xcrt_apdt` date DEFAULT NULL COMMENT '환율적용일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`xol_event_clm_dmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='XOL이벤트사고청구';
