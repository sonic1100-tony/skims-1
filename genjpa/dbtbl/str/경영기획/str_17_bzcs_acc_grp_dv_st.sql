--
-- Table structure for table `str_17_bzcs_acc_grp_dv_st`
--

DROP TABLE IF EXISTS `str_17_bzcs_acc_grp_dv_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_17_bzcs_acc_grp_dv_st` (
  `org_grpcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관군코드',
  `ntacc_grpcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목군코드',
  `ntacc_grpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목군명',
  `dv_stncd_1` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '배분기준코드1',
  `dv_st_rt_1` decimal(6,3) NOT NULL DEFAULT '0.000' COMMENT '배분기준비율1',
  `dv_stncd_2` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배분기준코드2',
  `dv_st_rt_2` decimal(6,3) DEFAULT '0.000' COMMENT '배분기준비율2',
  `dv_stncd_3` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배분기준코드3',
  `dv_st_rt_3` decimal(6,3) DEFAULT '0.000' COMMENT '배분기준비율3',
  `dv_stncd_4` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배분기준코드4',
  `dv_st_rt_4` decimal(6,3) DEFAULT '0.000' COMMENT '배분기준비율4',
  `dv_stncd_5` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배분기준코드5',
  `dv_st_rt_5` decimal(6,3) DEFAULT '0.000' COMMENT '배분기준비율5',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`org_grpcd`,`ntacc_grpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='IFRS17사업비계정군배분기준';
