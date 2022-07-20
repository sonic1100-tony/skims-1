--
-- Table structure for table `igd_nc_mtt_low_risk_st`
--

DROP TABLE IF EXISTS `igd_nc_mtt_low_risk_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_nc_mtt_low_risk_st` (
  `nc_mtt_qust_typcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알릴사항질문타입코드',
  `sl_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '판매담보코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `cmpr_optr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비교연산자구분코드',
  `isamt` decimal(17,2) NOT NULL COMMENT '가입금액',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`nc_mtt_qust_typcd`,`sl_cvrcd`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='알릴사항저리스크기준';
