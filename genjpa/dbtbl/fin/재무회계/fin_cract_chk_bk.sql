--
-- Table structure for table `fin_cract_chk_bk`
--

DROP TABLE IF EXISTS `fin_cract_chk_bk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_cract_chk_bk` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `chk_bkgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '수표책권번호',
  `chk_ordno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '수표순서번호',
  `chk_strno` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '수표시작번호',
  `chk_ndno` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '수표종료번호',
  `rc_buy` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '수령매수',
  `us_buy` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '사용매수',
  `dmg_buy` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '서손매수',
  `bk_pypl` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '은행지급지',
  `rcdt` date NOT NULL COMMENT '수령일자',
  `rc_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '수령기관코드',
  `rc_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수령직원번호',
  `dfpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예금상대처코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_cract_chk_bk_00` (`chk_bkgno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='당좌수표책';
