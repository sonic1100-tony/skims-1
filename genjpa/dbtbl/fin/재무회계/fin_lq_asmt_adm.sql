--
-- Table structure for table `fin_lq_asmt_adm`
--

DROP TABLE IF EXISTS `fin_lq_asmt_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_lq_asmt_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lq_asmt_no` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '청산지정번호',
  `lq_asmt_rqudt` date NOT NULL COMMENT '청산지정의뢰일자',
  `dl_chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '처리담당자직원번호',
  `uc_dl_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '미수처리상태코드',
  `np_dl_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '미지급처리상태코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_lq_asmt_adm_00` (`lq_asmt_no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='청산지정관리';
