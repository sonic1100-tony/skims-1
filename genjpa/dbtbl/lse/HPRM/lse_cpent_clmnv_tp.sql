--
-- Table structure for table `lse_cpent_clmnv_tp`
--

DROP TABLE IF EXISTS `lse_cpent_clmnv_tp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cpent_clmnv_tp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `clmnv_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고조사유형코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `thcp_rgt_orgcd` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '당사등록기관코드',
  `dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래구분코드',
  `cpent_mdrt` decimal(12,6) DEFAULT NULL COMMENT '협력업체조정율',
  `cpent_rqrt` decimal(12,6) DEFAULT NULL COMMENT '협력업체의뢰율',
  `cpent_pndct` decimal(7,0) DEFAULT NULL COMMENT '협력업체미결건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cpent_clmnv_tp_00` (`ctmno`,`cprt_entp_seqno`,`clmnv_tpcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='협력업체사고조사유형';
