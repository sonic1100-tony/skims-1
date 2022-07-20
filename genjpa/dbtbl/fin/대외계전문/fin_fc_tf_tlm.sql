--
-- Table structure for table `fin_fc_tf_tlm`
--

DROP TABLE IF EXISTS `fin_fc_tf_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_fc_tf_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `upls_tlm_tsdt` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송일자',
  `upls_tlm_ts_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송시간',
  `upls_tmmno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문번호',
  `upls_tlmcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문코드',
  `upls_bsns_flgcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스업무구분코드',
  `bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자번호',
  `wdrc_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금계좌번호',
  `dbl_pwd` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이중암호',
  `fc_rm_amt` decimal(18,3) DEFAULT NULL COMMENT '외화송금금액',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `rm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송금구분코드',
  `rmtr_ennm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송금인영문명',
  `rcpnt_ennm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수취인영문명',
  `dp_act_no` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금계좌번호',
  `rlt_ntncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대국가코드',
  `hstct_rm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적성국가송금여부',
  `swf_cd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SWIFT코드',
  `cm_wdra_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수수료인출계좌번호',
  `ovse_cm_chrg_cd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해외수수료부담코드',
  `ovse_cm_wdra_act_flgcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해외수수료인출계좌구분코드',
  `nots` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요',
  `paym_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수취은행코드',
  `gir_dlno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지로거래번호',
  `rsd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거주구분코드',
  `dpsr_inq_dlno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주조회거래번호',
  `ord_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주문번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='외화이체전문';
