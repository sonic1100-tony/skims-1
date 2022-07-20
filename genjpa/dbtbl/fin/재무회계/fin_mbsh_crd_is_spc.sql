--
-- Table structure for table `fin_mbsh_crd_is_spc`
--

DROP TABLE IF EXISTS `fin_mbsh_crd_is_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_mbsh_crd_is_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민번호',
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `crano` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '계약번호',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '고객명',
  `lpnt_pstpo_rcvad_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트우편물수신처구분코드',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화번호',
  `wpcnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장명',
  `depnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부서명',
  `cral_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화번호',
  `mv_cm_cmp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동통신회사구분코드',
  `sms_rcv_agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMS수신동의여부',
  `brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생년월일',
  `lpnt_solr_luna_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트양력음력구분코드',
  `mail_adr` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일주소',
  `mail_rcv_agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일수신동의여부',
  `frc_rgt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '강제등록여부',
  `mbrs_crd_sno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '멤버스카드일련번호',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자명',
  `carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호',
  `ins_strdt` date NOT NULL COMMENT '보험시작일자',
  `ins_nddt` date NOT NULL COMMENT '보험종료일자',
  `rgtdt` date NOT NULL COMMENT '등록일자',
  `rgt_hms` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '등록시각',
  `rgtr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '등록자직원번호',
  `dh_br_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급지점기관코드',
  `dh_offc_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급점포기관코드',
  `lpnt_chncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트채널코드',
  `lpnt_is_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트발급구분코드',
  `dldt` date DEFAULT NULL COMMENT '처리일자',
  `wrk_dl_hms` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업처리시각',
  `dl_rstdt` date DEFAULT NULL COMMENT '처리결과일자',
  `lpnt_dl_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트처리결과코드',
  `lpnt_dl_rst_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트처리결과상세코드',
  `crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드번호',
  `mbrs_crd_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '멤버스카드상태코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_mbsh_crd_is_spc_00` (`rsno`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='멤버십카드발급내역';
