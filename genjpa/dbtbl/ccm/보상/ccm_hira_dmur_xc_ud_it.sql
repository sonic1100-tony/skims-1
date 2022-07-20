--
-- Table structure for table `ccm_hira_dmur_xc_ud_it`
--

DROP TABLE IF EXISTS `ccm_hira_dmur_xc_ud_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_dmur_xc_ud_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `hira_dmbil_sno` decimal(3,0) NOT NULL COMMENT '심평원청구서일련번호',
  `hira_spcft_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원명세서일련번호',
  `dmur_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이의제기일련번호',
  `dmur_xc_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이의제기정산일련번호',
  `hira_xc_ud_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원정산심사일련번호',
  `hira_xc_ud_hbsno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원정산심사항일련번호',
  `hira_form_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원서식구분코드',
  `hira_xc_ud_dgre` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원정산심사차수',
  `hira_xc_rprdt` date NOT NULL COMMENT '심평원정산통보일자',
  `befo_spcft_litcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이전명세서항코드',
  `befo_ud_md_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이전심사조정사유코드',
  `befo_ud_mdamt` decimal(15,0) DEFAULT NULL COMMENT '이전심사조정금액',
  `befo_ad_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이전가산구분코드',
  `befo_drfe_mxdam_rdamt` decimal(15,0) DEFAULT NULL COMMENT '이전약제비상한차액삭감금액',
  `crnt_spcft_litcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현재명세서항코드',
  `crnt_ud_md_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현재심사조정사유코드',
  `crnt_ud_mdamt` decimal(15,0) DEFAULT NULL COMMENT '현재심사조정금액',
  `crnt_ad_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현재가산구분코드',
  `crnt_drfe_mxdam_rdamt` decimal(15,0) DEFAULT NULL COMMENT '현재약제비상한차액삭감금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_dmur_xc_ud_it_00` (`hira_rcp_yr`,`hira_rcpno`,`hira_dmbil_sno`,`hira_spcft_sno`,`dmur_sno`,`dmur_xc_sno`,`hira_xc_ud_sno`,`hira_xc_ud_hbsno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원이의제기정산심사항목';
