--
-- Table structure for table `ccm_loss_rtamt_dt`
--

DROP TABLE IF EXISTS `ccm_loss_rtamt_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_loss_rtamt_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `loss_rtamt_dt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일실퇴직금상세구분코드',
  `slr_amt` decimal(15,0) DEFAULT NULL COMMENT '급여금액',
  `amt_1` decimal(15,0) DEFAULT NULL COMMENT '금액1',
  `amt_2` decimal(15,0) DEFAULT NULL COMMENT '금액2',
  `amt_3` decimal(15,0) DEFAULT NULL COMMENT '금액3',
  `amt_4` decimal(15,0) DEFAULT NULL COMMENT '금액4',
  `amt_5` decimal(15,0) DEFAULT NULL COMMENT '금액5',
  `amt_6` decimal(15,0) DEFAULT NULL COMMENT '금액6',
  `clc_cfc_1` decimal(7,2) DEFAULT NULL COMMENT '산정계수1',
  `clc_cfc_2` decimal(7,2) DEFAULT NULL COMMENT '산정계수2',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_loss_rtamt_dt_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`cc_seq`,`loss_rtamt_dt_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일실퇴직금상세';
