--
-- Table structure for table `str_intnl_ctl_vl`
--

DROP TABLE IF EXISTS `str_intnl_ctl_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_intnl_ctl_vl` (
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `inctl_vl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가구분코드',
  `inctl_vl_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가항목코드',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `ppr_part_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위부문기관코드',
  `ppr_hdqt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위본부기관코드',
  `inctl_dcn_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내부통제확정등급코드',
  `dcn_t_poct` decimal(7,0) DEFAULT NULL COMMENT '확정총점수',
  `dcn_avg_poct` decimal(3,0) DEFAULT NULL COMMENT '확정평균점수',
  `dcn_t_ct` decimal(7,0) DEFAULT NULL COMMENT '확정총갯수',
  `intnl_vl_dcu_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내부평가문서ID',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`seq`,`inctl_vl_flgcd`,`inctl_vl_itcd`,`orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='내부통제평가';
