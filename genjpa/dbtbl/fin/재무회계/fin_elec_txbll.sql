--
-- Table structure for table `fin_elec_txbll`
--

DROP TABLE IF EXISTS `fin_elec_txbll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_elec_txbll` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `elec_tx_bll_apno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '전자세금계산서승인번호',
  `elec_txbll_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '전자세금계산서ID',
  `by_sl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '매입매출구분코드',
  `elec_txbll_ss_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전자세금계산서발행구분코드',
  `wrtdt` date NOT NULL COMMENT '작성일자',
  `isdt` date NOT NULL COMMENT '발급일자',
  `tsdt` date NOT NULL COMMENT '전송일자',
  `spr_bprno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '공급자사업자등록번호',
  `spr_conm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '공급자상호명',
  `spr_pdtnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '공급자대표자명',
  `spr_mail_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공급자이메일아이디',
  `spr_mail_domn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공급자이메일도메인',
  `sprv_bprno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수요자사업자등록번호',
  `sprv_conm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '수요자상호명',
  `sprv_pdtnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '수요자대표자명',
  `sprv_prs_mail_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수요자대표이메일아이디',
  `sprv_prs_mail_domn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수요자대표이메일도메인',
  `sprv_ad_mail_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수요자추가이메일아이디',
  `sprv_ad_mail_domn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수요자추가이메일도메인',
  `smamt` decimal(15,0) NOT NULL COMMENT '합계금액',
  `syamt` decimal(15,0) NOT NULL COMMENT '공급가액',
  `axamt` decimal(15,0) NOT NULL COMMENT '부가세액',
  `elec_txbll_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전자세금계산서분류코드',
  `elec_txbll_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전자세금계산서종류코드',
  `elec_txbll_is_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전자세금계산서발급유형코드',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `rp_dm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영수청구구분코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `slp_crt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표생성여부',
  `tblam_adm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잔액관리여부',
  `crnt_tblam` decimal(15,0) NOT NULL COMMENT '현재잔액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_elec_txbll_00` (`elec_tx_bll_apno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전자세금계산서';
