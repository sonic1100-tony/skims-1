--
-- Table structure for table `sam_org_atr_ch_crr`
--

DROP TABLE IF EXISTS `sam_org_atr_ch_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam_org_atr_ch_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `org_ch_atrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관변경속성코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ch_atrvl` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '변경속성값',
  `ch_rs_mtt` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경사유사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_sam_org_atr_ch_crr_00` (`orgcd`,`org_ch_atrcd`,`ap_nddt`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기관속성변경이력';
