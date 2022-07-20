--
-- Table structure for table `ins_rtx_ss`
--

DROP TABLE IF EXISTS `ins_rtx_ss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rtx_ss` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rtxno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `str_pym_seq` decimal(5,0) NOT NULL COMMENT '시작납입회차',
  `fnl_pym_seq` decimal(5,0) DEFAULT NULL COMMENT '최종납입회차',
  `pym_ct` decimal(3,0) DEFAULT NULL COMMENT '납입횟수',
  `str_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시작납입년월',
  `fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종납입년월',
  `pym_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입주기코드',
  `dp_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금원인코드',
  `dp_dt_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금세부원인코드',
  `rpamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '영수금액',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `rtx_ss_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증발행상태코드',
  `ssdt` date DEFAULT NULL COMMENT '발행일자',
  `mnt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금종구분코드',
  `hscs_hs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가계비가계구분코드',
  `ar_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연체보험료',
  `ar_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연체이자',
  `ppy_dc_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '선납할인보험료',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `rpdt` date DEFAULT NULL COMMENT '영수일자',
  `gr_pym_crct` decimal(7,0) DEFAULT NULL COMMENT '단체납입계약건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rtx_ss_00` (`rtxno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영수증발행';
