--
-- Table structure for table `ccm_slbta_atpli_obs_it`
--

DROP TABLE IF EXISTS `ccm_slbta_atpli_obs_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_slbta_atpli_obs_it` (
  `obs_itcd` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '장해항목코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `obs_gri` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '장해급항',
  `obs_parcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해부위코드',
  `obs_itnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해항목명',
  `obsrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '장해율',
  `rpbl_lmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '책임한도액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`obs_itcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='국배자배책장해항목';
