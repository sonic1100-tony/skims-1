--
-- Table structure for table `lse_stf_intnl_cpblt_it`
--

DROP TABLE IF EXISTS `lse_stf_intnl_cpblt_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_stf_intnl_cpblt_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `vl_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '평가년월',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `intnl_cpblt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부역량구분코드',
  `cpblt_dt_seqno` decimal(3,0) NOT NULL COMMENT '역량세부순번',
  `intnl_cpblt_da_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부역량자료상태코드',
  `dl_dthms` datetime NOT NULL COMMENT '처리일시',
  `cpblt_stf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '역량직원구분코드',
  `cpblt_stf_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '역량직원의견',
  `gnrz_xmn_ctncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종합검토의견코드',
  `gnrz_xmn_ctn_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종합검토의견기간코드',
  `cpblt_sfd_vl_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '역량만족도평가항목코드',
  `cpblt_sfd_vl_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '역량만족도평가세부코드',
  `cpblt_sfd_vlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '역량만족도평가코드',
  `vl_poct` decimal(5,0) DEFAULT NULL COMMENT '평가점수',
  `xclc_cpblt_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우수역량내용',
  `mpv_need_cpblt_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개선필요역량내용',
  `cpblt_dvp_pl_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '역량개발계획내용',
  `dlr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_stf_intnl_cpblt_it_00` (`vl_yymm`,`stfno`,`intnl_cpblt_flgcd`,`cpblt_dt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='직원내부역량항목';
