--
-- Table structure for table `lse_ud_dv_cnd_it`
--

DROP TABLE IF EXISTS `lse_ud_dv_cnd_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ud_dv_cnd_it` (
  `lsetm_dv_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사배당유형코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ud_cnd_it_seqno` decimal(7,0) NOT NULL COMMENT '심사조건항목순번',
  `ud_cnd_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심사조건항목코드',
  `ud_cnd_itvl` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사조건항목값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`lsetm_dv_tpcd`,`ap_nddt`,`ap_strdt`,`ud_cnd_it_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심사배당조건항목';
