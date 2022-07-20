--
-- Table structure for table `cus_rk_grd_rvl`
--

DROP TABLE IF EXISTS `cus_rk_grd_rvl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_rk_grd_rvl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `plyno_or_lnno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호/대출번호',
  `edd_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'EDD업무구분코드',
  `ctm_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객유형코드',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `born_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출생년도',
  `born_mndy` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출생월일',
  `nminr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미성년여부',
  `ntlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국적코드',
  `jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업코드',
  `jb_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '직업변경순번',
  `cnrdt` date DEFAULT NULL COMMENT '계약일자',
  `ctm_rel_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객관계유형코드',
  `pym_prm` decimal(17,2) DEFAULT NULL COMMENT '납입보험료',
  `pym_trm` decimal(3,0) DEFAULT NULL COMMENT '납입기간',
  `pym_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입주기코드',
  `xp_rtrt` decimal(5,2) DEFAULT NULL COMMENT '예상환급율',
  `hamt_ins_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고액보험계약구분코드',
  `crt_nrdps_dfrn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자피보험자상이여부',
  `ln_trm` decimal(5,0) DEFAULT NULL COMMENT '대출기간',
  `lnamt` decimal(15,0) DEFAULT NULL COMMENT '대출금액',
  `ln_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대출종목코드',
  `nt_pymps_dfrn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이자납입자상이여부',
  `nw_ctm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규고객여부',
  `itrvw_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대면여부',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dhtrb_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급처기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `edd_vl_grd` decimal(2,0) DEFAULT NULL COMMENT 'EDD평가등급',
  `edd_admno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'EDD관리번호',
  `befo_edd_admno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이전EDD관리번호',
  `befo_plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이전설계번호',
  `fnl_ctm_cntdt` date DEFAULT NULL COMMENT '최종고객접촉일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_rk_grd_rvl_00` (`stdt`,`ctmno`,`plyno_or_lnno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='위험등급재평가';
