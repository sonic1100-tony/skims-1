--
-- Table structure for table `ins_utatp`
--

DROP TABLE IF EXISTS `ins_utatp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_utatp` (
  `rgtno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '등록번호',
  `rgt_rs_ikdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '등록사유보종코드',
  `utatp_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수유의자유형코드',
  `utatp_tp_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수유의자유형세부코드',
  `utatp_fnl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수유의자최종상태코드',
  `utatp_rgt_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수유의자등록경로코드',
  `esdt` date DEFAULT NULL COMMENT '설정일자',
  `cncdt` date DEFAULT NULL COMMENT '해제일자',
  `utatp_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수유의자식별번호구분코드',
  `utatp_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수유의자식별번호',
  `crpno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인번호',
  `nm_or_bzpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성명/사업자명',
  `bf_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전우편번호',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `ri_or_lrdlp` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리/대량배달처',
  `stno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '번지구분코드',
  `stno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '번지',
  `house` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '호',
  `dt_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세부주소',
  `dsacd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질병코드',
  `dsas_parcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질병부위코드',
  `hnd_par` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장애부위',
  `clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고여부',
  `rgt_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록사유',
  `clm_rcpno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고접수번호',
  `vlt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위배내용',
  `nw_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규주소구분코드',
  `road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명',
  `undg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지하구분코드',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rgtno`),
  KEY `idx_ins_utatp_10` (`utatp_dscno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='인수유의자';
