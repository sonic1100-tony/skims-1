--
-- Table structure for table `ccm_cmp_prnot_is`
--

DROP TABLE IF EXISTS `ccm_cmp_prnot_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cmp_prnot_is` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `prnot_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출력물구분코드',
  `is_ordr` decimal(5,0) NOT NULL COMMENT '발급순차',
  `is_bj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급대상구분코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) DEFAULT NULL COMMENT '협력업체순번',
  `snd_fax_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송팩스지역번호',
  `snd_fax_tno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송팩스국번',
  `snd_fax_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송팩스일련번호',
  `dcu_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서기관코드',
  `dcu_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서년월',
  `dcu_sno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서일련번호',
  `is_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급담당자직원번호',
  `cmpu_is_dthms` datetime DEFAULT NULL COMMENT '전산발급일시',
  `ibnf_py_prdt` date DEFAULT NULL COMMENT '보험금지급예정일자',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cmp_prnot_is_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`prnot_flgcd`,`is_ordr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보상출력물발급';
