--
-- Table structure for table `cmp_psn_crdif_tpcl_of_crst`
--

DROP TABLE IF EXISTS `cmp_psn_crdif_tpcl_of_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_psn_crdif_tpcl_of_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `crdio_tp_rgtno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보제공유형등록번호',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `info_ofdt` date DEFAULT NULL COMMENT '정보제공일자',
  `of_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제공시간',
  `ctmct` decimal(9,0) DEFAULT NULL COMMENT '고객수',
  `rcv_perdt` date DEFAULT NULL COMMENT '환수기한일자',
  `rcv_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환수담당직원번호',
  `rcv_iptdt` date DEFAULT NULL COMMENT '환수입력일자',
  `rcv_ct` decimal(10,0) DEFAULT NULL COMMENT '환수건수',
  `rcv_adm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환수관리직원번호',
  `rcv_cnfdt` date DEFAULT NULL COMMENT '환수확인일자',
  `dl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리여부',
  `finm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cmp_psn_crdif_tpcl_of_crst_00` (`crdio_tp_rgtno`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개인신용정보유형별제공현황';
