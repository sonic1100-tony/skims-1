--
-- Table structure for table `gea_ase_rq`
--

DROP TABLE IF EXISTS `gea_ase_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ase_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '요청번호',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청자직원번호',
  `dmd_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '요청자기관코드',
  `rq_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청내용',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `dl_hpdt` date DEFAULT NULL COMMENT '처리희망일자',
  `ppr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위기관코드',
  `org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관실체구분코드',
  `adm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '관리기관코드',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `mv_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전화지역번호',
  `mv_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전화국번',
  `mv_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전화일련번호',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `rcr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령자명',
  `bsns_adx_file_dscno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무첨부파일식별번호',
  `temp_save_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '임시저장여부',
  `prv_nd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재종료구분코드',
  `prv_bsns_key` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재업무KEY',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_ase_rq_00` (`reqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자산요청';
