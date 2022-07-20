--
-- Table structure for table `cus_ins_ntcda_ref`
--

DROP TABLE IF EXISTS `cus_ins_ntcda_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ins_ntcda_ref` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ref_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '참고일련번호',
  `da_pbwns_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자료공유여부',
  `ntc_da_ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내자료보험종목코드',
  `chrps_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자유형코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `gd_cnn_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품관련팀기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ins_ntcda_ref_00` (`ref_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험안내자료참고';
