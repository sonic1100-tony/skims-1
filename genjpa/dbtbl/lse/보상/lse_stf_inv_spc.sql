--
-- Table structure for table `lse_stf_inv_spc`
--

DROP TABLE IF EXISTS `lse_stf_inv_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_stf_inv_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `cmp_stf_cns_seqno` decimal(3,0) NOT NULL COMMENT '보상직원상담순번',
  `inv_dtspc_seqno` decimal(3,0) NOT NULL COMMENT '면담세부내역순번',
  `inv_da_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '면담자료상태코드',
  `inv_dt` date DEFAULT NULL COMMENT '면담일자',
  `inv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면담구분코드',
  `invps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면담자직원번호',
  `inv_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면담시간',
  `stf_inv_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원면담내용',
  `stf_inv_ordr_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원면담지시내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_stf_inv_spc_00` (`stfno`,`cmp_stf_cns_seqno`,`inv_dtspc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='직원면담내역';
