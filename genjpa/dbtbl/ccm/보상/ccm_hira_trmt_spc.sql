--
-- Table structure for table `ccm_hira_trmt_spc`
--

DROP TABLE IF EXISTS `ccm_hira_trmt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_trmt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `hira_dmbil_sno` decimal(3,0) NOT NULL COMMENT '심평원청구서일련번호',
  `hira_spcft_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원명세서일련번호',
  `line_no` decimal(4,0) NOT NULL COMMENT '라인번호',
  `hira_trmt_litcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원진료항코드',
  `hira_trmt_sitcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원진료목코드',
  `hira_trmt_dtcd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원진료상세코드구분코드',
  `hira_trmt_dtcd` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원진료상세코드',
  `hira_trmt_dtcd_nm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원진료상세코드명',
  `trpa_unprc` decimal(17,2) NOT NULL COMMENT '진료비단가',
  `dy1_dosa_ct` decimal(7,2) DEFAULT NULL COMMENT '1일투여횟수',
  `t_dosa_days` decimal(3,0) DEFAULT NULL COMMENT '총투여일수',
  `t1_mdct_qant` decimal(10,5) DEFAULT NULL COMMENT '1회투약수량',
  `trmt_amt` decimal(15,0) DEFAULT NULL COMMENT '진료금액',
  `mxamt` decimal(15,0) DEFAULT NULL COMMENT '상한가액',
  `drfe_mx_diamt` decimal(15,0) DEFAULT NULL COMMENT '약제비상한차액금액',
  `chdt` date DEFAULT NULL COMMENT '변경일자',
  `rgtup_dntcr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우상치식구분코드',
  `lftup_dntcr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '좌상치식구분코드',
  `rgtdn_dntcr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우하치식구분코드',
  `lftdn_dntcr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '좌하치식구분코드',
  `hira_ad_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원가산구분코드',
  `chnmd_ads_symb_no` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한방가감기호번호',
  `itcl_1_stot_amt` decimal(15,0) DEFAULT NULL COMMENT '항목별1소계금액',
  `itcl_2_stot_amt` decimal(15,0) DEFAULT NULL COMMENT '항목별2소계금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_trmt_spc_00` (`hira_rcp_yr`,`hira_rcpno`,`hira_dmbil_sno`,`hira_spcft_sno`,`line_no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원진료내역';
