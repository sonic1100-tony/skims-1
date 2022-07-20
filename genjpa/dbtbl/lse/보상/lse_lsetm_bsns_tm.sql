--
-- Table structure for table `lse_lsetm_bsns_tm`
--

DROP TABLE IF EXISTS `lse_lsetm_bsns_tm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_bsns_tm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '팀기관코드',
  `lsetm_dv_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사배당업무구분코드',
  `dv_str_amt` decimal(17,2) NOT NULL COMMENT '배당시작금액',
  `dv_nd_amt` decimal(17,2) NOT NULL COMMENT '배당종료금액',
  `lsetm_tm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사팀구분코드',
  `cnr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '센터기관코드',
  `mrl_grd_str_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MRL등급시작코드',
  `mrl_grd_nd_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MRL등급종료코드',
  `mrl_grd_str_rank` decimal(10,0) DEFAULT NULL COMMENT 'MRL등급시작순위',
  `mrl_grd_nd_rank` decimal(10,0) DEFAULT NULL COMMENT 'MRL등급종료순위',
  `tm_dvmrt_apyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팀배당율적용여부',
  `lsetm_tm_dv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사팀배당구분코드',
  `nw_dvmrt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규배당율코드',
  `ad_dvmrt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추가배당율코드',
  `dv_lmict` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '배당제한건수',
  `nw_dvct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '신규배당건수',
  `ad_dvct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '추가배당건수',
  `fnl_dv_dthms` datetime DEFAULT NULL COMMENT '최종배당일시',
  `lsetm_cnr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사센터구분코드',
  `ta_dvmrt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관배당율코드',
  `ta_dvct` decimal(7,0) DEFAULT NULL COMMENT '이관배당건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_lsetm_bsns_tm_00` (`tm_orgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사업무팀';
