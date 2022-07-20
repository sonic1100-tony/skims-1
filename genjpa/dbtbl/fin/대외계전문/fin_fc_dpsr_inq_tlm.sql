--
-- Table structure for table `fin_fc_dpsr_inq_tlm`
--

DROP TABLE IF EXISTS `fin_fc_dpsr_inq_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_fc_dpsr_inq_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `upls_tlm_tsdt` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송일자',
  `upls_tlm_ts_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송시간',
  `upls_tmmno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문번호',
  `upls_tlmcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문코드',
  `upls_bsns_flgcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스업무구분코드',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `cnvcd` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통화코드',
  `fc_rm_amt` decimal(18,3) DEFAULT NULL COMMENT '외화송금금액',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `rmtr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송금인성명',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주명',
  `rcpnt_ennm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수취인영문명',
  `gir_dlno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지로거래번호',
  `dl_av_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래가능여부',
  `rsdt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거주자구분코드',
  `cms_act_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CMS계좌여부',
  `dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리상태코드',
  `blnc_bkcd` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '밸런스은행코드',
  `file_dl_pno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일거래고유번호',
  `dl_ord_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래주문번호',
  `per_otbk_flgcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당타행구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='외화예금주조회전문';
