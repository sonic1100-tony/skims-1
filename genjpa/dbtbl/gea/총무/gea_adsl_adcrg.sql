--
-- Table structure for table `gea_adsl_adcrg`
--

DROP TABLE IF EXISTS `gea_adsl_adcrg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_adsl_adcrg` (
  `dmdt` date NOT NULL COMMENT '청구일자',
  `id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '아이디',
  `dm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '청구년월',
  `dm_gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구상품명',
  `adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소',
  `opndt` date DEFAULT NULL COMMENT '개통일자',
  `cnono` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접속번호',
  `crtm_dccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약기간할인코드',
  `pyamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '납부금액합계',
  `dcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '할인금액',
  `idamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '증감액',
  `tx` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '세금',
  `axamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '부가세액',
  `nyamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '미납금액',
  `arrs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연체료',
  `syamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공급가액',
  `soamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공급외액',
  `gir_rdamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지로에누리금액',
  `intr_cnvct` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '국제통화건수',
  `cnocs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '접속료',
  `eqmt_rent` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '장비임대료',
  `id_ad_usamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '아이디추가이용료',
  `ntl_plc_mgrcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '설치장소이전비',
  `srv1_usamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '서비스1이용료',
  `srv2_usamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '서비스2이용료',
  `srv3_usamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '서비스3이용료',
  `plc_mvcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '장소이동비',
  `nw_ntlcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '신규설치비',
  `dl_inrno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래통합번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dmdt`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='ADSL과금';
