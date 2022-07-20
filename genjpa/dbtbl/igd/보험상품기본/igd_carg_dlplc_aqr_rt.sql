--
-- Table structure for table `igd_carg_dlplc_aqr_rt`
--

DROP TABLE IF EXISTS `igd_carg_dlplc_aqr_rt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_carg_dlplc_aqr_rt` (
  `bzmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업자번호',
  `bzmno_seqno` decimal(5,0) NOT NULL COMMENT '사업자번호순번',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `sbd_gr_ctm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '하위단체고객내용',
  `itm_mdcl_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목중분류내용',
  `illg_1_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부정1유무',
  `itm_smcl_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목소분류내용',
  `aqr_xpipt_flg_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구득수출입구분내용',
  `carg_bacnd_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적하기본조건내용',
  `bacnd_ad_it_vl` decimal(5,2) DEFAULT '0.00' COMMENT '기본조건추가항목값',
  `pack_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '포장방법코드',
  `illg_2_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부정2유무',
  `carg_nvgtn_are_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적하항해구역내용',
  `illg_3_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부정3유무',
  `hp_1_pft_rt` decimal(7,2) DEFAULT NULL COMMENT '희망1이익율',
  `hp_2_pft_rt` decimal(7,2) DEFAULT NULL COMMENT '희망2이익율',
  `ntncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국가코드',
  `ctycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도시코드',
  `bl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'BL여부',
  `uiamt` decimal(17,2) DEFAULT '0.00' COMMENT '공제금액',
  `dcrt` decimal(12,6) DEFAULT '0.000000' COMMENT '공제율',
  `ad_cnd_unin_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부가조건조합내용',
  `ad_itvl_unin_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추가항목값조합내용',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `aqr_rt` decimal(15,7) DEFAULT '0.0000000' COMMENT '구득요율',
  `aqr_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구득적용구분코드',
  `lowt_prm_ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최저보험료적용여부',
  `isamt_xc_ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입금액할증적용여부',
  `illg_4_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부정4유무',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bzmno`,`bzmno_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='적하거래처구득요율';
