--
-- Table structure for table `lse_lsetm_entp_hsp`
--

DROP TABLE IF EXISTS `lse_lsetm_entp_hsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_entp_hsp` (
  `hspcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '병원코드',
  `bzmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업자번호',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `fsvs_hsp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '금감원병원구분코드',
  `spcf_hsp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특정병원구분코드',
  `hspnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '병원명',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `ri_or_lrdlp` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리/대량배달처',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `dmos_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국내외구분코드',
  `ntncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국가코드',
  `ctycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도시코드',
  `pout_mtt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항구분코드',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `prs_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표전화지역번호',
  `prs_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표전화국번',
  `prs_tlsno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표전화일련번호',
  `ipps_pstcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력자소속코드',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명',
  `undg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지하구분코드',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `nw_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규주소구분코드',
  `lbzdt` date DEFAULT NULL COMMENT '개업일자',
  `qtb_dt` date DEFAULT NULL COMMENT '폐업일자',
  `cnsdr_us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자문의사용여부',
  `mntn_hspcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정비병원코드',
  `mntn_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정비사업자번호',
  `vald_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유효여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`hspcd`,`bzmno`,`ap_nddt`,`ap_strdt`),
  KEY `idx_lse_lsetm_entp_hsp_10` (`prs_tltno`,`prs_tlsno`,`prs_tlano`),
  KEY `idx_lse_lsetm_entp_hsp_11` (`bzmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사업체병원';
