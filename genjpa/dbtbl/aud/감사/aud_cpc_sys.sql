--
-- Table structure for table `aud_cpc_sys`
--

DROP TABLE IF EXISTS `aud_cpc_sys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_cpc_sys` (
  `adt_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '감사년월',
  `adt_seqno` decimal(5,0) NOT NULL COMMENT '감사순번',
  `adt_bj_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '감사대상기관코드',
  `adt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사직원번호',
  `cpc_rqog_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CPC요청기관구분코드',
  `cpc_da_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CPC자료구분코드',
  `cpc_da_dmdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CPC자료요청자명',
  `dmd_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자전화번호',
  `rq_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청명',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `rq_clsdt` date DEFAULT NULL COMMENT '요청마감일자',
  `adx_1_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부1파일경로',
  `adx_2_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부2파일경로',
  `adx_3_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부3파일경로',
  `tsdt` date DEFAULT NULL COMMENT '전송일자',
  `prsdt` date DEFAULT NULL COMMENT '제출일자',
  `rcvdt` date DEFAULT NULL COMMENT '수신일자',
  `rcv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신직원번호',
  `asrdt` date DEFAULT NULL COMMENT '회신일자',
  `asr_1_file_pthnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신1파일경로명',
  `asr_2_file_pthnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신2파일경로명',
  `asr_3_file_pthnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신3파일경로명',
  `asr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신직원번호',
  `rq_tmnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청팀명',
  `rq_oj` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청목적',
  `cnf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인여부',
  `auth_es_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '권한설정여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`adt_yymm`,`adt_seqno`,`adt_bj_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='CPC시스템';
