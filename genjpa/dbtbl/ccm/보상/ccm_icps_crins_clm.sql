--
-- Table structure for table `ccm_icps_crins_clm`
--

DROP TABLE IF EXISTS `ccm_icps_crins_clm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_icps_crins_clm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `carno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '차량번호',
  `dvpns_ins_cmpcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원보험회사코드',
  `dvpns_clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원사고담보코드',
  `dvpns_clmno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원사고번호',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `clm_dthms` datetime DEFAULT NULL COMMENT '사고일시',
  `clm_rcpdt` date DEFAULT NULL COMMENT '사고접수일자',
  `ibnf_pydt` date DEFAULT NULL COMMENT '보험금지급일자',
  `icps_clm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ICPS사고구분코드',
  `icps_clm_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ICPS사고유형코드',
  `pstno_onw_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호신구구분코드',
  `clm_arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고지역코드',
  `hrm_victm_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가해자피해자차량구분코드',
  `clm_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고차량번호',
  `rgt_ownr_eqal_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록소유자일치여부',
  `mntn_fctcd` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정비공장코드',
  `mntn_fctnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정비공장명',
  `clm_rsm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고개요내용',
  `py_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급구분코드',
  `flt_rt` decimal(3,0) DEFAULT NULL COMMENT '과실비율',
  `py_rfamt` decimal(17,2) DEFAULT NULL COMMENT '지급준비금액',
  `py_ibamt` decimal(15,0) DEFAULT NULL COMMENT '지급보험금액',
  `ins_isamt` decimal(17,2) DEFAULT NULL COMMENT '보험가입금액',
  `rpair_wrknm_1` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리작업명1',
  `wrk_flgnm_1` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업구분명1',
  `rpair_wrknm_2` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리작업명2',
  `wrk_flgnm_2` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업구분명2',
  `rpair_wrknm_3` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리작업명3',
  `wrk_flgnm_3` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업구분명3',
  `rpair_wrknm_4` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리작업명4',
  `wrk_flgnm_4` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업구분명4',
  `rpair_wrknm_5` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리작업명5',
  `wrk_flgnm_5` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업구분명5',
  `clmdr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고운전자여부',
  `crt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자여부',
  `rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_icps_crins_clm_00` (`carno`,`dvpns_ins_cmpcd`,`dvpns_clm_cvrcd`,`dvpns_clmno`,`dmge_rank`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='ICPS자동차보험사고';
