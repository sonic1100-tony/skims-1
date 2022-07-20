--
-- Table structure for table `lse_crdis_rlpmi_intn_cr_tlm`
--

DROP TABLE IF EXISTS `lse_crdis_rlpmi_intn_cr_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_crdis_rlpmi_intn_cr_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `intn_tlmcd` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '대외전문코드',
  `nrdps_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자고객번호',
  `inq_stdt` date NOT NULL COMMENT '조회기준일자',
  `ins_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험회사코드',
  `crdis_plyno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보원증권번호',
  `crdis_ins_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원보험종류코드',
  `crdis_gdcd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원상품코드',
  `ins_gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험상품명',
  `injr_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해급수코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_crdis_rlpmi_intn_cr_tlm_00` (`intn_tlmcd`,`nrdps_ctmno`,`inq_stdt`,`ins_cmpcd`,`crdis_plyno`),
  KEY `idx_lse_crdis_rlpmi_intn_cr_tlm_10` (`crdis_plyno`,`inq_stdt`)
) ENGINE=InnoDB AUTO_INCREMENT=2237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신용정보원실손대외계약전문';
