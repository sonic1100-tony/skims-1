--
-- Table structure for table `gea_itm_info_crr`
--

DROP TABLE IF EXISTS `gea_itm_info_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_itm_info_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '품목코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `itm_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '품목상태코드',
  `cn_yyct_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내용년수코드',
  `dp_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상각방법코드',
  `dprt` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '상각율',
  `itm_dlplc_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목거래처고객번호',
  `itm_std` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목규격',
  `itm_unprc` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '품목단가',
  `itm_untcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목단위코드',
  `itm_boxpr_ct` decimal(3,0) DEFAULT NULL COMMENT '품목BOX당갯수',
  `prts_paqu` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인쇄물지질',
  `prts_chrm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인쇄물색도',
  `prts_pagct` decimal(3,0) DEFAULT NULL COMMENT '인쇄물페이지수',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `prt_entp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인쇄업체고객번호',
  `bdg_ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예산계정과목코드',
  `prs_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표상품코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_itm_info_crr_00` (`itmcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='품목정보이력';
