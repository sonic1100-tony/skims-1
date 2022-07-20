--
-- Table structure for table `ccm_py_jgamt_cs`
--

DROP TABLE IF EXISTS `ccm_py_jgamt_cs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_py_jgamt_cs` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lw_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '소송접수년도',
  `lw_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '소송일련번호',
  `lwjd` decimal(2,0) NOT NULL COMMENT '심급',
  `py_jgamt_cs_seqno` decimal(5,0) NOT NULL COMMENT '지급판결금비용순번',
  `lw_py_ex_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소송지급환입구분코드',
  `pydt` date NOT NULL COMMENT '지급일자',
  `lw_pypl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소송지급처구분코드',
  `lw_pypl_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송지급처고객번호',
  `lw_pypl_cpent_seqno` decimal(3,0) DEFAULT NULL COMMENT '소송지급처협력업체순번',
  `lw_pylnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송지급처명',
  `lw_py_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소송지급항목구분코드',
  `lw_pyamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '소송지급금액',
  `axamt` decimal(15,0) DEFAULT NULL COMMENT '부가세액',
  `py_smamt` decimal(15,0) NOT NULL COMMENT '지급합계금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_py_jgamt_cs_00` (`lw_rcp_yr`,`lw_sno`,`lwjd`,`py_jgamt_cs_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급판결금비용';
