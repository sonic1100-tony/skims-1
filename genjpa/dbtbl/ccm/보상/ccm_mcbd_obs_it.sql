--
-- Table structure for table `ccm_mcbd_obs_it`
--

DROP TABLE IF EXISTS `ccm_mcbd_obs_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_mcbd_obs_it` (
  `obs_itcd` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '장해항목코드',
  `obs_itnm` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '장해항목명',
  `obs_it_1_rknm` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '장해항목1단계명',
  `obs_it_2_rknm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해항목2단계명',
  `obs_it_3_rknm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해항목3단계명',
  `obs_it_4_rknm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해항목4단계명',
  `obs_it_5_rknm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해항목5단계명',
  `obs_it_6_rknm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해항목6단계명',
  `oudr_lbrr_obsrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '옥외근로자장해율',
  `indr_lbrr_obsrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '옥내근로자장해율',
  `obsrt_ref_xpnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해율참조설명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`obs_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='맥브라이드장해항목';
