--
-- Table structure for table `ins_xol_pvl`
--

DROP TABLE IF EXISTS `ins_xol_pvl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_xol_pvl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `xol_ppno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT 'XOL계상번호',
  `xol_crano` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'XOL계약번호',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `xol_prm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'XOL보험료구분코드',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `xol_pvl_cr_gpno` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT 'XOL계상발생그룹번호',
  `nprp_lyrno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비비례LAYER번호',
  `xcdt` date DEFAULT NULL COMMENT '정산일자',
  `gu_fire_dat_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구화재데이터여부',
  `pyp_seq` decimal(5,0) DEFAULT NULL COMMENT '분납회차',
  `pyp_rt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '분납비율',
  `rl_netps_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '실제순보유보험료',
  `rl_netps_prm_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실제순보유보험료화폐코드',
  `rl_netps_sub_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '실제순보유SUB보험료',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `xol_ry_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT 'XOL회수보험금액',
  `xol_ry_ibamt_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL회수보험금액화폐코드',
  `rst_bj_re_dlno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '복원대상출재처리번호',
  `clmdt` date DEFAULT NULL COMMENT '사고일자',
  `xol_dt_spc` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL상세내역',
  `os_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'OS여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_xol_pvl_00` (`xol_ppno`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='XOL계상';
