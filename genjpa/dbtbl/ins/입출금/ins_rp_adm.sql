--
-- Table structure for table `ins_rp_adm`
--

DROP TABLE IF EXISTS `ins_rp_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rp_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rp_admno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '영수관리번호',
  `mnt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금종구분코드',
  `rp_dthms` datetime DEFAULT NULL COMMENT '영수일시',
  `rtx_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증분류코드',
  `rpamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '영수금액',
  `rv_xcno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납정산번호',
  `rvdt` date DEFAULT NULL COMMENT '수납일자',
  `rv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납여부',
  `act_sbrcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회계부점코드',
  `crd_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드회사코드',
  `rp_pth_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수경로구분코드',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '발행후변경순번',
  `clsaf_rcpno` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감후접수번호',
  `clsaf_rcp_seqno` decimal(5,0) DEFAULT NULL COMMENT '마감후접수순번',
  `ctm_slr_auto_tfsno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객급여자동이체번호',
  `ltrm_cr_totno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기계약집계번호',
  `bll_ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '어음원장번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rp_adm_00` (`rp_admno`),
  KEY `idx_ins_rp_adm_01` (`plno`,`cgaf_ch_seqno`,`rvdt`,`rp_dthms`,`rpamt`),
  KEY `idx_ins_rp_adm_10` (`ctm_slr_auto_tfsno`)
) ENGINE=InnoDB AUTO_INCREMENT=29899 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영수관리';
