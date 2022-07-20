--
-- Table structure for table `ins_cr_udrtk_ap_are`
--

DROP TABLE IF EXISTS `ins_cr_udrtk_ap_are`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_udrtk_ap_are` (
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `cr_udrtk_chncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자동차인수채널코드',
  `pstno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '우편번호',
  `stdt` date NOT NULL COMMENT '기준일자',
  `dc_xc_up50_are_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '할인할증50이상지역구분코드',
  `dc_xc_45_und_are_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '할인할증45미만지역구분코드',
  `frgrt_mega_city_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4대광역시구분코드',
  `no2_hpcar_is_avyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번해피카가입가능여부',
  `no1_pstno_arenm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번우편번호지역명',
  `dc_xc_40_und_are_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '할인할증40미만지역구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ins_imcd`,`cr_udrtk_chncd`,`pstno`,`stdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차인수승인지역';
