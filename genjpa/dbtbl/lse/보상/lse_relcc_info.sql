--
-- Table structure for table `lse_relcc_info`
--

DROP TABLE IF EXISTS `lse_relcc_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_relcc_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `inssw_relcc_seqno` decimal(3,0) NOT NULL COMMENT '보험사기관련자순번',
  `inssw_relnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사기관련자명',
  `inssw_relcc_rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사기관련자주민사업자번호',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `ri_or_lrdlp` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리/대량배달처',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `jbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업명',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `nrdps_rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자주민사업자번호',
  `inssw_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사기관계코드',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명',
  `undg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지하구분코드',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `nw_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규주소구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_relcc_info_00` (`rcp_yymm`,`rcp_nv_seqno`,`plyno`,`inssw_relcc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='관련자정보';
