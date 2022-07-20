--
-- Table structure for table `gea_rstm_cop`
--

DROP TABLE IF EXISTS `gea_rstm_cop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_rstm_cop` (
  `ldg_rgtno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원장등록번호',
  `rstm_cop_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '부동산구성실체구분코드',
  `cop_seqno` decimal(5,0) NOT NULL COMMENT '구성순번',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `plr_rnt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '복수임차구분코드',
  `grod_undg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지상지하구분코드',
  `are_scl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '면적범위구분코드',
  `fl` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '층',
  `sico` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '호수',
  `rnt_fl_info` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임차층정보',
  `tot_are` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전체면적',
  `av_are` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가능면적',
  `pbl_are` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '공용면적',
  `rl_are` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '실면적',
  `use` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '용도',
  `us_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용실체구분코드',
  `us_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용기관코드',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `sbd_orgnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '하위기관명',
  `plr_us_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '복수사용용도코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ldg_rgtno`,`rstm_cop_ntty_flgcd`,`cop_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='부동산구성';
