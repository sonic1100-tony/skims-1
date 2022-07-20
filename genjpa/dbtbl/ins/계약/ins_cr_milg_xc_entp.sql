--
-- Table structure for table `ins_cr_milg_xc_entp`
--

DROP TABLE IF EXISTS `ins_cr_milg_xc_entp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_milg_xc_entp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `obd_tk_jnscd` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT 'OBD탈착가맹점코드',
  `afc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '제휴사구분코드',
  `jns_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점사업자번호',
  `arecd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지역코드',
  `dico_jng_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직할가맹구분코드',
  `sd` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '시군구',
  `jngnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '가맹점명',
  `conm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상호명',
  `pdtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표자명',
  `afc_cntad` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제휴사연락처',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `afc_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제휴사주소',
  `jns_ntc_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점안내주소',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_milg_xc_entp_00` (`obd_tk_jnscd`,`afc_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차마일리지정산업체';
