--
-- Table structure for table `ins_apl_lmit_adm`
--

DROP TABLE IF EXISTS `ins_apl_lmit_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_apl_lmit_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자식별번호',
  `apl_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '청약제한구분코드',
  `apl_lmit_gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '청약제한상품코드',
  `apl_lmit_st` date NOT NULL COMMENT '청약제한시기',
  `apl_lmit_clstr` date NOT NULL COMMENT '청약제한종기',
  `o1_apl_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차청약제한구분코드',
  `o2_apl_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차청약제한구분코드',
  `o3_apl_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차청약제한구분코드',
  `o4_apl_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4차청약제한구분코드',
  `o5_apl_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5차청약제한구분코드',
  `o6_apl_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '6차청약제한구분코드',
  `o7_apl_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '7차청약제한구분코드',
  `o8_apl_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '8차청약제한구분코드',
  `o9_apl_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '9차청약제한구분코드',
  `o10_apl_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '10차청약제한구분코드',
  `o11_apl_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '11차청약제한구분코드',
  `o12_apl_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '12차청약제한구분코드',
  `o13_apl_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '13차청약제한구분코드',
  `o14_apl_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '14차청약제한구분코드',
  `o15_apl_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '15차청약제한구분코드',
  `iptdt` date DEFAULT NULL COMMENT '입력일자',
  `inp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_apl_lmit_adm_00` (`nrdps_dscno`,`apl_lmit_flgcd`,`apl_lmit_gdcd`,`apl_lmit_st`,`apl_lmit_clstr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='청약제한관리';
