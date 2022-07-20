--
-- Table structure for table `fin_amg_act_is`
--

DROP TABLE IF EXISTS `fin_amg_act_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_amg_act_is` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `is_bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발급은행코드',
  `amg_actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '가상계좌번호',
  `isdt` date NOT NULL COMMENT '발급일자',
  `asdt` date DEFAULT NULL COMMENT '배정일자',
  `amg_act_asbj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가상계좌배정대상구분코드',
  `amg_act_as_bjno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가상계좌배정대상번호',
  `us_nddt` date DEFAULT NULL COMMENT '사용종료일자',
  `amg_act_us_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가상계좌사용구분코드',
  `dfpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예금상대처코드',
  `crt_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자주민번호',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `rtmns_plyno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '퇴직보험증권번호',
  `cr_cmp_no` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동차보상번호',
  `lnno` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대출번호',
  `inr_rtxno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통합영수증번호',
  `amg_act_reus_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '가상계좌재사용여부',
  `dpamt` decimal(15,0) DEFAULT NULL COMMENT '입금금액',
  `amg_act_is_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가상계좌발급구분코드',
  `amg_act_is_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가상계좌발급직원번호',
  `amg_act_ctl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가상계좌통제여부',
  `chr_snd_empno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문자발송사번',
  `chr_snd_dt` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문자발송날짜',
  `chr_snd_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문자발송시간',
  `amg_act_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가상계좌전화지역번호',
  `amg_act_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가상계좌전화국번',
  `amg_act_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가상계좌전화일련번호',
  `amg_act_wst_cd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가상계좌폐기코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_amg_act_is_00` (`is_bkcd`,`amg_actno`),
  KEY `idx_fin_amg_act_is_10` (`amg_act_as_bjno`),
  KEY `idx_fin_amg_act_is_11` (`cr_cmp_no`),
  KEY `idx_fin_amg_act_is_12` (`amg_actno`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='가상계좌발급';
