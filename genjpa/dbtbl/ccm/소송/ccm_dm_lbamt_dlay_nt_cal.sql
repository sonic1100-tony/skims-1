--
-- Table structure for table `ccm_dm_lbamt_dlay_nt_cal`
--

DROP TABLE IF EXISTS `ccm_dm_lbamt_dlay_nt_cal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dm_lbamt_dlay_nt_cal` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `flt_stf_dc_dgre` decimal(1,0) NOT NULL COMMENT '과실상계공제차수',
  `nt_cal_spc_seqno` decimal(5,0) NOT NULL COMMENT '이자계산내역순번',
  `jgamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '판결금액',
  `nt_cal_strdt` date NOT NULL COMMENT '이자계산시작일자',
  `nt_cal_nddt` date NOT NULL COMMENT '이자계산종료일자',
  `trm_days` decimal(5,0) NOT NULL COMMENT '기간일수',
  `ntrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '이자율',
  `ntamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이자금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_dm_lbamt_dlay_nt_cal_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`cc_seq`,`flt_stf_dc_dgre`,`nt_cal_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해배상금지연이자계산';
