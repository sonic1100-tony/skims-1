--
-- Table structure for table `lse_dyb_mdorg_dl_crst`
--

DROP TABLE IF EXISTS `lse_dyb_mdorg_dl_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dyb_mdorg_dl_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `hspcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '병원코드',
  `bzmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업자번호',
  `hsp_dmct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '입원청구건수',
  `ltrm_hsp_dmct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '장기입원청구건수',
  `wknd_hsp_dmct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '주말입원청구건수',
  `thcp_hsp_dmct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '당사입원청구건수',
  `hsp_days` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '입원일수',
  `spbd_hsp_dmct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '척추체입원청구건수',
  `thcp_spbd_hsp_dmct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '당사척추체입원청구건수',
  `spbd_op_dmct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '척추체수술청구건수',
  `thcp_spbd_op_dmct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '당사척추체수술청구건수',
  `spbd_knjt_dmct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '척추체슬관절청구건수',
  `thcp_spbd_knjt_dmct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '당사척추체슬관절청구건수',
  `nop_obs_dmct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '비수술장해청구건수',
  `obs_dmct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '장해청구건수',
  `nsly_mdcf` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '비급여치료비',
  `mdcf` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '치료비',
  `imu_ct` decimal(9,0) NOT NULL DEFAULT '0' COMMENT '면책건수',
  `thcp_imu_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '당사면책건수',
  `ins_crme_nv_sjdyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험범죄조사적발여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_dyb_mdorg_dl_crst_00` (`stdt`,`hspcd`,`bzmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일별의료기관처리현황';
