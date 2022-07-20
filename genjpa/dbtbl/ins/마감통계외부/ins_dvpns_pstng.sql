--
-- Table structure for table `ins_dvpns_pstng`
--

DROP TABLE IF EXISTS `ins_dvpns_pstng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_pstng` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nrdcd` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자코드',
  `carno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '차량번호',
  `ins_st` date NOT NULL COMMENT '보험시기',
  `pstng_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '포스팅구분코드',
  `pstng_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '포스팅상태코드',
  `rgt_ud_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록심사직원번호',
  `rgt_udwdt` date DEFAULT NULL COMMENT '등록심사일자',
  `rgt_gn_plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록일반설계번호',
  `rgt_co_plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록공동설계번호',
  `pstng_rgtdt` date DEFAULT NULL COMMENT '포스팅등록일자',
  `pstng_rgtno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '포스팅등록번호',
  `co_prm` decimal(15,0) DEFAULT NULL COMMENT '공동보험료',
  `tnd_gn_plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입찰일반설계번호',
  `tnd_gn_prm` decimal(15,0) DEFAULT NULL COMMENT '입찰일반보험료',
  `pstng_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '포스팅등급코드',
  `pstng_ap_strt` decimal(12,4) DEFAULT NULL COMMENT '포스팅적용기준율',
  `pstng_spqu_rt` decimal(12,4) DEFAULT NULL COMMENT '포스팅특성요율',
  `fnl_tnd_plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종입찰설계번호',
  `fnl_tnd_prm` decimal(15,0) DEFAULT NULL COMMENT '최종입찰보험료',
  `tnd_ud_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입찰심사직원번호',
  `tnd_udwdt` date DEFAULT NULL COMMENT '입찰심사일자',
  `pstng_tnddt` date DEFAULT NULL COMMENT '포스팅입찰일자',
  `pstng_bidt` date DEFAULT NULL COMMENT '포스팅낙찰일자',
  `pstng_ersdt` date DEFAULT NULL COMMENT '포스팅삭제일자',
  `pstng_wrcs_rec_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '포스팅동의서녹취ID',
  `coobj_cnfst_rec_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공동물건확인서녹취ID',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_pstng_00` (`nrdcd`,`carno`,`ins_st`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원포스팅';
