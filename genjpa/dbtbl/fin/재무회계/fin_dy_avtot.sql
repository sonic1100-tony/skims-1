--
-- Table structure for table `fin_dy_avtot`
--

DROP TABLE IF EXISTS `fin_dy_avtot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dy_avtot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `deldt` date NOT NULL COMMENT '거래일자',
  `apdt` date NOT NULL COMMENT '승인일자',
  `lpnt_dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트거래구분코드',
  `lpnt_dl_tycd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트거래형태코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `lpnt_chncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트채널코드',
  `unt_orncd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '단위조직코드',
  `ppr_orncd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위조직코드',
  `dy_av_totct` decimal(10,0) DEFAULT NULL COMMENT '일실적집계건수',
  `slamt` decimal(15,0) DEFAULT NULL COMMENT '매출금액',
  `cr_pnt_num` decimal(15,0) DEFAULT NULL COMMENT '발생포인트수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_dy_avtot_00` (`deldt`,`apdt`,`lpnt_dl_flgcd`,`lpnt_dl_tycd`,`gdcd`,`lpnt_chncd`,`unt_orncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일실적집계';
