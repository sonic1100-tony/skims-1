--
-- Table structure for table `fin_bdg_dp_dv_spc`
--

DROP TABLE IF EXISTS `fin_bdg_dp_dv_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bdg_dp_dv_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `slpdt` date NOT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전표번호',
  `slp_lnno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '전표라인번호',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `bdg_ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예산계정과목코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `woncr_poamt` decimal(15,0) DEFAULT '0' COMMENT '원화계상금액',
  `act_ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회계계정과목코드',
  `hdcft_inp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수기입력여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_bdg_dp_dv_spc_00` (`slpdt`,`slpno`,`slp_lnno`,`dh_orgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예산발의배분내역';
