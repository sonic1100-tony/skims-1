--
-- Table structure for table `lse_dgn`
--

DROP TABLE IF EXISTS `lse_dgn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dgn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `dgncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단코드',
  `dgncd_sno` decimal(5,0) NOT NULL COMMENT '진단코드일련번호',
  `dgnnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단명',
  `dsas_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질병분류코드',
  `dgndt` date DEFAULT NULL COMMENT '진단일자',
  `hspcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원코드',
  `hspnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원명',
  `bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자번호',
  `fsvs_hsp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금감원병원구분코드',
  `drnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의사명',
  `intns_licno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의사면허번호',
  `isdt` date DEFAULT NULL COMMENT '발급일자',
  `img_dcuno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지문서번호',
  `mdud_seq` decimal(3,0) DEFAULT NULL COMMENT '의료심사회차',
  `std_opnct_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '표준소견서여부',
  `mn_dgn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주진단여부',
  `sspc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의증여부',
  `trpa_ud_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료비심사여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_dgn_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`dgncd`,`dgncd_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='진단';
