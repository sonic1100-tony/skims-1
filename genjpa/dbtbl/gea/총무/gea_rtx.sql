--
-- Table structure for table `gea_rtx`
--

DROP TABLE IF EXISTS `gea_rtx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_rtx` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rtxno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증번호',
  `rtx_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증종류코드',
  `itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '품목코드',
  `rtx_ssdt` date DEFAULT NULL COMMENT '영수증발행일자',
  `cons_nddt` date DEFAULT NULL COMMENT '보존만료일자',
  `vlddt` date DEFAULT NULL COMMENT '유효일자',
  `rpamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '영수금액',
  `rpdt` date DEFAULT NULL COMMENT '영수일자',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `ss_dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발행취급기관코드',
  `cm_dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수금취급기관코드',
  `rvdt` date DEFAULT NULL COMMENT '수납일자',
  `rv_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납기관코드',
  `rv_xcno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납정산번호',
  `fr_rtxno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최초영수증번호',
  `dmgdt` date DEFAULT NULL COMMENT '서손일자',
  `lssdt` date DEFAULT NULL COMMENT '분실일자',
  `ntcdt` date DEFAULT NULL COMMENT '공고일자',
  `ntc_entnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공고업체명',
  `inso_uscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부실사용코드',
  `rtx_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증상태코드',
  `rtn_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '반납여부',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `out_ct` decimal(5,0) DEFAULT NULL COMMENT '출력횟수',
  `out_av_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력가능여부',
  `rtx_bkno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증책번호',
  `rtndt` date DEFAULT NULL COMMENT '반납일자',
  `wstdt` date DEFAULT NULL COMMENT '폐기일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_rtx_00` (`rtxno`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영수증';
