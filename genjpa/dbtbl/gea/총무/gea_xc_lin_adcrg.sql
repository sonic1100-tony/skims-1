--
-- Table structure for table `gea_xc_lin_adcrg`
--

DROP TABLE IF EXISTS `gea_xc_lin_adcrg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_xc_lin_adcrg` (
  `dmdt` date NOT NULL COMMENT '청구일자',
  `xc_linno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '전용회선번호',
  `dm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '청구년월',
  `ts_kndnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송종류명',
  `xc_lin_rt` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '전용회선요율',
  `adcrg_dst` decimal(10,0) DEFAULT NULL COMMENT '과금거리',
  `lin_kndnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회선종류명',
  `speed` decimal(7,2) DEFAULT '0.00' COMMENT '속도',
  `lincs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '회선료',
  `city_adcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '시내추가료',
  `qtrrt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '분기료',
  `eqp_lencs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '장치대여료',
  `eqpcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '장치비',
  `adamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '가산금액',
  `ppr_tlonm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위전화국명',
  `ppr_ntl_plc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위설치장소',
  `dccnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '할인코드명',
  `lin_st` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회선상태',
  `dldt` date DEFAULT NULL COMMENT '처리일자',
  `opn_dlay_cmpcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '개통지연보상료',
  `lin_tor_cmpcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '회선고장보상료',
  `idamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '증감금액',
  `auto_tf_dcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자동이체할인금액',
  `cg_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '요금합계',
  `syamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공급가액',
  `axamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '부가세액',
  `emamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '청구금액',
  `sbd_tlonm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '하위전화국명',
  `sbd_ntl_plc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '하위설치장소',
  `cm_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통신분류코드',
  `ch_ntlcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '변경설치비',
  `is_ad_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '가입부가세액',
  `etamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타금액',
  `arrs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연체료',
  `cg_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '요금감면금액',
  `cg_dcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '요금할인금액',
  `dm_sbamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '청구대체금액',
  `cg_mdamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '요금조정금액',
  `dl_inrno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래통합번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dmdt`,`xc_linno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전용회선과금';
