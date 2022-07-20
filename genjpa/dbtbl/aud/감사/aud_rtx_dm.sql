--
-- Table structure for table `aud_rtx_dm`
--

DROP TABLE IF EXISTS `aud_rtx_dm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_rtx_dm` (
  `rtx_dm_org_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증청구기관구분코드',
  `rtx_dm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증청구기관코드',
  `rtx_mfg_org_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증출고기관구분코드',
  `rtx_mfg_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증출고기관코드',
  `rtx_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증종류코드',
  `rtx_dmdt` date NOT NULL COMMENT '영수증청구일자',
  `rtx_dm_seqno` decimal(5,0) NOT NULL COMMENT '영수증청구순번',
  `rtx_rc_reqdt` date DEFAULT NULL COMMENT '영수증수령요청일자',
  `rtx_dm_qant` decimal(5,0) DEFAULT NULL COMMENT '영수증청구수량',
  `rtx_ap_qant` decimal(5,0) DEFAULT NULL COMMENT '영수증승인수량',
  `rtx_mfg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증출고여부',
  `rtx_mfgdt` date DEFAULT NULL COMMENT '영수증출고일자',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `rtx_ss_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증발행년도',
  `rtx_bkno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증책번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rtx_dm_org_flgcd`,`rtx_dm_orgcd`,`rtx_mfg_org_flgcd`,`rtx_mfg_orgcd`,`rtx_kndcd`,`rtx_dmdt`,`rtx_dm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영수증청구';
