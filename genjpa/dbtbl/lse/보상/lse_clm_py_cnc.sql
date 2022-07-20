--
-- Table structure for table `lse_clm_py_cnc`
--

DROP TABLE IF EXISTS `lse_clm_py_cnc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_py_cnc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `reqdt` date NOT NULL COMMENT '요청일자',
  `cnc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '해제구분코드',
  `py_av_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '지급가능여부',
  `dl_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_py_cnc_00` (`plyno`,`reqdt`,`cnc_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고지급해제';
