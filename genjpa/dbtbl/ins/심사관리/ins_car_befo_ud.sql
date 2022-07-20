--
-- Table structure for table `ins_car_befo_ud`
--

DROP TABLE IF EXISTS `ins_car_befo_ud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_car_befo_ud` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nrdcd` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자코드',
  `ins_st` date NOT NULL COMMENT '보험시기',
  `nw_rnw_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신규갱신코드',
  `ins_itm_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목소분류코드',
  `cr_ud_chncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자동차심사채널코드',
  `cnmcd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '차명코드',
  `catcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차종코드',
  `cr_tycd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차형태코드',
  `rgt_dthms` datetime DEFAULT NULL COMMENT '등록일시',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `foma_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외산여부',
  `cr_fuel_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량연료구분코드',
  `carnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_car_befo_ud_00` (`nrdcd`,`ins_st`,`nw_rnw_cd`,`ins_itm_smccd`,`cr_ud_chncd`,`cnmcd`,`catcd`,`cr_tycd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차계약차량사전심사';
