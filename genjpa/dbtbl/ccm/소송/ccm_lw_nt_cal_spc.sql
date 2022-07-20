--
-- Table structure for table `ccm_lw_nt_cal_spc`
--

DROP TABLE IF EXISTS `ccm_lw_nt_cal_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lw_nt_cal_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lw_prg_sno` decimal(10,0) NOT NULL COMMENT '소송진행일련번호',
  `lw_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소송업무구분코드',
  `nt_cal_seqno` decimal(5,0) NOT NULL COMMENT '이자계산순번',
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
  UNIQUE KEY `pux_ccm_lw_nt_cal_spc_00` (`lw_prg_sno`,`lw_bsns_flgcd`,`nt_cal_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소송이자계산내역';
