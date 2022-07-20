--
-- Table structure for table `sam_stf_paff_crr`
--

DROP TABLE IF EXISTS `sam_stf_paff_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam_stf_paff_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `stf_ch_atrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직원변경속성코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `paff_crrvl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인사이력값',
  `ch_rs_mtt` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경사유사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_sam_stf_paff_crr_00` (`stfno`,`stf_ch_atrcd`,`ap_nddt`)
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='직원인사이력';
