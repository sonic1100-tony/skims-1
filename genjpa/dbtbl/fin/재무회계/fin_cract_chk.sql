--
-- Table structure for table `fin_cract_chk`
--

DROP TABLE IF EXISTS `fin_cract_chk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_cract_chk` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `chk_dscno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '수표식별번호',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `ssdt` date DEFAULT NULL COMMENT '발행일자',
  `ssamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '발행금액',
  `ss_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발행기관코드',
  `ss_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발행직원번호',
  `pylno` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처번호',
  `rcps` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령인',
  `chk_wdrwl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수표인출증구분코드',
  `stmdt` date DEFAULT NULL COMMENT '결제일자',
  `stm_slpdt` date DEFAULT NULL COMMENT '결제전표일자',
  `stm_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결제전표번호',
  `stm_slp_lnno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결제전표라인번호',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `chk_bkgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수표책권번호',
  `chk_dldt` date DEFAULT NULL COMMENT '수표처리일자',
  `bk_trnm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행전달여부',
  `frm_dcuno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공식문서번호',
  `frm_dcu_snddt` date DEFAULT NULL COMMENT '공식문서발송일자',
  `frm_dcu_rcpdt` date DEFAULT NULL COMMENT '공식문서접수일자',
  `chk_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수표상태코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_cract_chk_00` (`chk_dscno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='당좌수표';
