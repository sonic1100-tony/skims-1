--
-- Table structure for table `igd_ltrm_rfd`
--

DROP TABLE IF EXISTS `igd_ltrm_rfd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_ltrm_rfd` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `rt_key_assmb_cd` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '요율KEY조립코드',
  `rnd_trm` decimal(5,0) NOT NULL COMMENT '경과기간',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `nd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '만기구분코드',
  `ins_trm` decimal(3,0) NOT NULL COMMENT '보험기간',
  `nw_rnw_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신규갱신구분코드',
  `pym_trm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '납입기간구분코드',
  `pym_trm` decimal(3,0) NOT NULL COMMENT '납입기간',
  `sexcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '성별코드',
  `injr_rnkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상해급수코드',
  `drve_tycd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '운전형태코드',
  `sustd_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '표준하체여부',
  `cmp_lmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보상한도코드',
  `is_age` decimal(3,0) NOT NULL COMMENT '가입연령',
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
  `pym_cyccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '납입주기코드',
  `st_isamt` decimal(17,2) DEFAULT NULL COMMENT '기준가입금액',
  `nprm` decimal(17,7) NOT NULL COMMENT '순보험료',
  `std_cn_uiamt` decimal(21,6) NOT NULL COMMENT '표준해약공제금액',
  `beye_prm_cuamt` decimal(15,0) NOT NULL COMMENT '연초보험료적립금액',
  `yend_prm_cuamt` decimal(15,0) NOT NULL COMMENT '연말보험료적립금액',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_igd_ltrm_rfd_00` (`gdcd`,`cvrcd`,`rt_key_assmb_cd`,`rnd_trm`,`ap_strdt`)
) ENGINE=InnoDB AUTO_INCREMENT=1044219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기준비금';
