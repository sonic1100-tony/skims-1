--
-- Table structure for table `cus_emeg_mvo_srv_xc`
--

DROP TABLE IF EXISTS `cus_emeg_mvo_srv_xc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_emeg_mvo_srv_xc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `xc_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '정산년월',
  `emeg_mvo_of_srvcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '긴급출동제공서비스코드',
  `emgmv_srv_entp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '01' COMMENT '긴급출동서비스업체구분코드',
  `cm_mvo_ct` decimal(7,0) DEFAULT NULL COMMENT '당월출동건수',
  `cm_mvo_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월출동금액',
  `dc_ct` decimal(7,0) DEFAULT NULL COMMENT '공제건수',
  `uiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '공제금액',
  `ad_pyct` decimal(7,0) DEFAULT NULL COMMENT '추가지급건수',
  `ad_pyamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '추가지급금액',
  `dat_sourc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '03' COMMENT '데이터소스구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_emeg_mvo_srv_xc_00` (`xc_yymm`,`emeg_mvo_of_srvcd`,`emgmv_srv_entp_flgcd`,`dat_sourc_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='긴급출동서비스정산';
