--
-- Table structure for table `gea_ase_mv`
--

DROP TABLE IF EXISTS `gea_ase_mv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ase_mv` (
  `aseno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '자산번호',
  `ase_mv_seqno` decimal(5,0) NOT NULL COMMENT '자산이동순번',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관실체구분코드',
  `adm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '관리기관코드',
  `adm_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '관리직원번호',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) DEFAULT NULL COMMENT '신청순번',
  `rq_spc_seqno` decimal(5,0) DEFAULT NULL COMMENT '신청내역순번',
  `ase_mv_spc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자산이동내역구분코드',
  `mv_spc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동내역',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `reqno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청번호',
  `rq_bj_seqno` decimal(3,0) DEFAULT NULL COMMENT '요청대상순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aseno`,`ase_mv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자산이동';
