--
-- Table structure for table `lse_stf_intnl_cpblt`
--

DROP TABLE IF EXISTS `lse_stf_intnl_cpblt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_stf_intnl_cpblt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `vl_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '평가년월',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `intnl_cpblt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부역량구분코드',
  `intnl_cpblt_da_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부역량자료상태코드',
  `hp_mv_o1_arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '희망이동1차지역코드',
  `hp_mv_o2_arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '희망이동2차지역코드',
  `hp_mv_o3_arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '희망이동3차지역코드',
  `sfd_poct` decimal(5,2) DEFAULT NULL COMMENT '만족도점수',
  `opedt` date DEFAULT NULL COMMENT '시행일자',
  `mrt_mtt_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '좋은사항의견',
  `bad_mtt_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '나쁜사항의견',
  `mpv_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개선의견',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '팀기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_stf_intnl_cpblt_00` (`vl_yymm`,`stfno`,`intnl_cpblt_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='직원내부역량';
