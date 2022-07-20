--
-- Table structure for table `gea_itm`
--

DROP TABLE IF EXISTS `gea_itm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_itm` (
  `itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '품목코드',
  `itmnm` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '품목명',
  `itm_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '품목상태코드',
  `itm_xpnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목설명',
  `itm_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '품목대분류코드',
  `itm_mdccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '품목중분류코드',
  `itm_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '품목소분류코드',
  `cn_yyct_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내용년수코드',
  `dp_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상각방법코드',
  `dprt` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '상각율',
  `itm_untcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목단위코드',
  `org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관실체구분코드',
  `adm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '관리기관코드',
  `itm_dlplc_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목거래처고객번호',
  `itm_std` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목규격',
  `itm_unprc` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '품목단가',
  `itm_boxpr_ct` decimal(3,0) DEFAULT NULL COMMENT '품목BOX당갯수',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `bsns_adx_file_dscno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무첨부파일식별번호',
  `prts_paqu` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인쇄물지질',
  `prts_chrm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인쇄물색도',
  `prts_pagct` decimal(3,0) DEFAULT NULL COMMENT '인쇄물페이지수',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `rtx_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증종류코드',
  `adm_rpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리책임코드',
  `cons_yyprd_yyct` decimal(3,0) DEFAULT NULL COMMENT '보존년한년수',
  `vald_days` decimal(3,0) DEFAULT NULL COMMENT '유효일수',
  `prt_entp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인쇄업체고객번호',
  `bdg_ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예산계정과목코드',
  `prs_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표상품코드',
  `lend_av_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대여가능여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`itmcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='품목';
