--
-- Table structure for table `fin_dlplc_rgt_evnt`
--

DROP TABLE IF EXISTS `fin_dlplc_rgt_evnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dlplc_rgt_evnt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dsodt` date NOT NULL COMMENT '발의일자',
  `bdg_dpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '예산발의번호',
  `dlpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래처명',
  `dlplc_stfnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래처직원명',
  `rgt_evnt_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '경조행사분류코드',
  `rgt_dt` date DEFAULT NULL COMMENT '경조일자',
  `rgt_plc` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '경조장소',
  `exp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지출직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_dlplc_rgt_evnt_00` (`dsodt`,`bdg_dpno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='거래처경조행사';
