--
-- Table structure for table `igd_ltrm_ba_atr_meta`
--

DROP TABLE IF EXISTS `igd_ltrm_ba_atr_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_ltrm_ba_atr_meta` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ltrm_rt_tabl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '장기요율테이블구분코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `nd_flgcd_atrvl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '만기구분코드속성값',
  `instr_atrvl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '보험기간속성값',
  `nw_rnw_flgcd_atrvl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '신규갱신구분코드속성값',
  `pytrm_flgcd_atrvl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '납입기간구분코드속성값',
  `pytrm_atrvl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '납입기간속성값',
  `sexcd_atrvl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '성별코드속성값',
  `injr_rnkcd_atrvl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '상해급수코드속성값',
  `drve_tycd_atrvl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '운전형태코드속성값',
  `sustd_yn_atrvl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '표준하체여부속성값',
  `cmp_lmcd_atrvl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '보상한도코드속성값',
  `pym_cyccd_atrvl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '납입주기코드속성값',
  `is_age_atrvl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '가입연령속성값',
  `rt_flg_vl1` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요율구분값1',
  `rt_flg_vl2` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요율구분값2',
  `rt_flg_vl3` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요율구분값3',
  `rt_flg_vl4` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요율구분값4',
  `rt_flg_vl5` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요율구분값5',
  `rt_flg_vl6` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요율구분값6',
  `rt_flg_vl7` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요율구분값7',
  `rt_flg_vl8` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요율구분값8',
  `rt_flg_vl9` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요율구분값9',
  `rt_flg_vl10` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요율구분값10',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_igd_ltrm_ba_atr_meta_00` (`ltrm_rt_tabl_flgcd`,`gdcd`,`cvrcd`,`ap_strdt`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기보험료기초속성메타';
