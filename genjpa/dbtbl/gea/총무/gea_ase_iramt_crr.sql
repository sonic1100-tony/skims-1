--
-- Table structure for table `gea_ase_iramt_crr`
--

DROP TABLE IF EXISTS `gea_ase_iramt_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ase_iramt_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `aseno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '자산번호',
  `ins_nddt` date NOT NULL COMMENT '보험종료일자',
  `ins_strdt` date NOT NULL COMMENT '보험시작일자',
  `dl_inrno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '거래통합번호',
  `ins_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험회사코드',
  `iramt_plyno` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부보증권번호',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_ase_iramt_crr_00` (`aseno`,`ins_nddt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자산부보이력';
