--
-- Table structure for table `cus_ins_ntcda_dt`
--

DROP TABLE IF EXISTS `cus_ins_ntcda_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ins_ntcda_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '접수번호',
  `ins_ntc_dt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험안내상세구분코드',
  `ins_ntc_da_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험안내자료상세코드',
  `ins_ntc_dt_seqno` decimal(3,0) NOT NULL COMMENT '보험안내상세순번',
  `et_dt_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타상세내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ins_ntcda_dt_00` (`rcpno`,`ins_ntc_dt_flgcd`,`ins_ntc_da_dtcd`,`ins_ntc_dt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험안내자료상세';
