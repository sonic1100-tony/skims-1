--
-- Table structure for table `aud_tpcl_titl_nm`
--

DROP TABLE IF EXISTS `aud_tpcl_titl_nm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_tpcl_titl_nm` (
  `adt_bsns_dsccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감사업무식별코드',
  `tp_titl_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유형제목내용',
  `impdg_xpnm` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중요도설명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`adt_bsns_dsccd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='유형별제목명';
