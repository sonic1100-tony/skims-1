--
-- Table structure for table `lse_clm_rcp_dcu_cpmt_spc`
--

DROP TABLE IF EXISTS `lse_clm_rcp_dcu_cpmt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_rcp_dcu_cpmt_spc` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dcu_cpmt_rqsno` decimal(5,0) NOT NULL COMMENT '서류보완요청순번',
  `dcu_cpmt_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '서류보완상태코드',
  `dcu_cpmt_dmd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '서류보완요청자구분코드',
  `dcu_cpmt_dmd_no` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '서류보완요청자번호',
  `dcu_cpmt_reqdt` date NOT NULL COMMENT '서류보완요청일자',
  `dcu_cpmt_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서류보완담당직원번호',
  `dcu_cpmt_cpldt` date DEFAULT NULL COMMENT '서류보완완료일자',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`dcu_cpmt_rqsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고접수서류보완내역';
