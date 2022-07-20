--
-- Table structure for table `lse_ikd_armcl_wgt`
--

DROP TABLE IF EXISTS `lse_ikd_armcl_wgt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ikd_armcl_wgt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ikd_armcl_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군별담보구분코드',
  `ibnr_wgt_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR가중치유형코드',
  `pldm_wgt_rt` decimal(3,0) DEFAULT NULL COMMENT 'PLDM가중치율',
  `ildm_wgt_rt` decimal(3,0) DEFAULT NULL COMMENT 'ILDM가중치율',
  `bfmpl_wgt_rt` decimal(3,0) DEFAULT NULL COMMENT 'BFMPL가중치율',
  `bfmil_wgt_rt` decimal(3,0) DEFAULT NULL COMMENT 'BFMIL가중치율',
  `ap_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적용년월',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ikd_armcl_wgt_00` (`cls_yymm`,`ikd_armcl_cvr_flgcd`,`ibnr_wgt_tpcd`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보종군별가중치';
