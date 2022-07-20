--
-- Table structure for table `lse_obs_it`
--

DROP TABLE IF EXISTS `lse_obs_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_obs_it` (
  `obs_ch_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '장해변경구분코드',
  `obs_itcd` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '장해항목코드',
  `obsrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '장해율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`obs_ch_flgcd`,`obs_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장해항목';
