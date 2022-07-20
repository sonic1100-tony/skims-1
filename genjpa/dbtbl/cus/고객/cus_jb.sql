--
-- Table structure for table `cus_jb`
--

DROP TABLE IF EXISTS `cus_jb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_jb` (
  `jb_ch_seqno` decimal(5,0) NOT NULL COMMENT '직업변경순번',
  `jbcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직업코드',
  `jbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업명',
  `dt_jbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세부직업명',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `ppr_jb_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '상위직업변경순번',
  `ppr_jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위직업코드',
  `injr_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해급수코드',
  `injr_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해등급코드',
  `trf_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교통급수코드',
  `xc_cvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '할증담보여부',
  `cr_jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동차직업코드',
  `ltrm_xclc_jb_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기우량직업구분코드',
  `jb_xpnm` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업설명',
  `jb_dt_tpnm` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업세부유형명',
  `apldo_out_bjyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청약서출력대상여부',
  `jb_xpnm_out_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업설명출력내용',
  `ud_xcpt_jb_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사제외직업여부',
  `injr_rk_grdcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해위험등급코드',
  `dsas_rk_grdcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질병위험등급코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`jbcd`,`jb_ch_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='직업';
