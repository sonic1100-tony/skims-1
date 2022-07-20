--
-- Table structure for table `fin_act_adt_da_adm`
--

DROP TABLE IF EXISTS `fin_act_adt_da_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_act_adt_da_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `adt_da_admno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감사자료관리번호',
  `adt_da_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감사자료유형코드',
  `reqdt` date NOT NULL COMMENT '요청일자',
  `da_rq_orgnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '자료요청기관명',
  `dmdnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '요청자명',
  `prst_perdt` date NOT NULL COMMENT '제출기한일자',
  `act_tm_chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '회계팀담당자직원번호',
  `chr_dep_cd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당부서코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `noty_dt` date DEFAULT NULL COMMENT '알림일자',
  `rq_mtt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청사항내용',
  `prst_oj_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제출목적내용',
  `read_dthms` datetime DEFAULT NULL COMMENT '열람일시',
  `prst_dthms` datetime DEFAULT NULL COMMENT '제출일시',
  `tmnd_cnf_dthms` datetime DEFAULT NULL COMMENT '팀장확인일시',
  `noty_ct` decimal(2,0) DEFAULT NULL COMMENT '알림횟수',
  `prst_stcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제출상태코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_act_adt_da_adm_00` (`adt_da_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='회계감사자료관리';
