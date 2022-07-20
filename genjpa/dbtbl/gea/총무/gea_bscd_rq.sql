--
-- Table structure for table `gea_bscd_rq`
--

DROP TABLE IF EXISTS `gea_bscd_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_bscd_rq` (
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rqor_cd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '신청기관코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `bscd_rq_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '명함신청상태코드',
  `clpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직급명',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소',
  `tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화번호',
  `hpno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰번호',
  `fxno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스번호',
  `mail_adr` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일주소',
  `wrte_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기재항목코드',
  `eng_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문기관명',
  `eng_clpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문직급명',
  `ennm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문명',
  `eng_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문주소',
  `rq_qant` decimal(5,0) DEFAULT NULL COMMENT '신청수량',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `adm_org_chrps_apdt` date DEFAULT NULL COMMENT '관리기관담당자승인일자',
  `adm_org_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리기관담당직원번호',
  `adm_org_admr_apdt` date DEFAULT NULL COMMENT '관리기관관리자승인일자',
  `adm_org_admr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리기관관리자직원번호',
  `fax_ts_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스전송여부',
  `fax_tsdt` date DEFAULT NULL COMMENT '팩스전송일자',
  `rcdt` date DEFAULT NULL COMMENT '수령일자',
  `rc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령직원번호',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `adr_tp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소유형구분코드',
  `radnm_dsc_kyvl` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명식별키값',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관코드',
  `xcdt` date DEFAULT NULL COMMENT '정산일자',
  `xc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rqdt`,`rqor_cd`,`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='명함신청';
