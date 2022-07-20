--
-- Table structure for table `ccm_gvmt_hrm_info`
--

DROP TABLE IF EXISTS `ccm_gvmt_hrm_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_gvmt_hrm_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `apno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '승인번호',
  `clm_dthms` datetime NOT NULL COMMENT '사고일시',
  `vicnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자명',
  `victm_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자주민번호',
  `gnbz_acd_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보장사업사건처리구분코드',
  `aret_dt` date DEFAULT NULL COMMENT '검거일자',
  `pmn_ps_clm_dthms` datetime DEFAULT NULL COMMENT '경찰보유사고일시',
  `clm_plc_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고장소우편번호',
  `clm_plc` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고장소',
  `hrmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가해자명',
  `hrm_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가해자주민번호',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소',
  `cntad` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처',
  `hndph_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰번호',
  `hrm_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가해자차량번호',
  `harm_cr_owrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가해차량소유자명',
  `harm_car_ownr_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가해차량소유자주민번호',
  `rcv_dthms` datetime NOT NULL COMMENT '수신일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_gvmt_hrm_info_00` (`apno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='정부보장가해자정보';
