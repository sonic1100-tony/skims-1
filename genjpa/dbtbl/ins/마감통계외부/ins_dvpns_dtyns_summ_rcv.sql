--
-- Table structure for table `ins_dvpns_dtyns_summ_rcv`
--

DROP TABLE IF EXISTS `ins_dvpns_dtyns_summ_rcv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_dtyns_summ_rcv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `da_yymm_seq` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '자료년월회차',
  `oldbl_seqno` decimal(5,0) NOT NULL COMMENT '구중복순번',
  `rcv_dact` decimal(7,0) DEFAULT NULL COMMENT '수신자료건수',
  `bdin1_ninct` decimal(7,0) DEFAULT NULL COMMENT '대인1미가입건수',
  `bdin2_ninct` decimal(7,0) DEFAULT NULL COMMENT '대인2미가입건수',
  `prdm_ninct` decimal(7,0) DEFAULT NULL COMMENT '대물미가입건수',
  `et_ninct` decimal(7,0) DEFAULT NULL COMMENT '기타미가입건수',
  `nrnw_tsct` decimal(7,0) DEFAULT NULL COMMENT '미갱신전송건수',
  `nrnw_ch_tsct` decimal(7,0) DEFAULT NULL COMMENT '미갱신변경전송건수',
  `nrnw_nch_tsct` decimal(7,0) DEFAULT NULL COMMENT '미갱신무변경전송건수',
  `npy_cn_tsct` decimal(7,0) DEFAULT NULL COMMENT '미납해지전송건수',
  `npy_cn_ch_tsct` decimal(7,0) DEFAULT NULL COMMENT '미납해지변경전송건수',
  `npy_cn_nch_tsct` decimal(7,0) DEFAULT NULL COMMENT '미납해지무변경전송건수',
  `et_tsct` decimal(7,0) DEFAULT NULL COMMENT '기타전송건수',
  `er_dact` decimal(7,0) DEFAULT NULL COMMENT '오류자료건수',
  `bdin1_nis_erct` decimal(7,0) DEFAULT NULL COMMENT '대인1미가입오류건수',
  `bdin2_nis_erct` decimal(7,0) DEFAULT NULL COMMENT '대인2미가입오류건수',
  `prdm_nis_erct` decimal(7,0) DEFAULT NULL COMMENT '대물미가입오류건수',
  `et_nis_erct` decimal(7,0) DEFAULT NULL COMMENT '기타미가입오류건수',
  `nrnw_ts_erct` decimal(7,0) DEFAULT NULL COMMENT '미갱신전송오류건수',
  `nrnw_ch_ts_erct` decimal(7,0) DEFAULT NULL COMMENT '미갱신변경전송오류건수',
  `nrnw_nch_ts_erct` decimal(7,0) DEFAULT NULL COMMENT '미갱신무변경전송오류건수',
  `npy_cn_ts_erct` decimal(7,0) DEFAULT NULL COMMENT '미납해지전송오류건수',
  `npy_cn_chts_erct` decimal(7,0) DEFAULT NULL COMMENT '미납해지변경전송오류건수',
  `npy_cn_nchts_erct` decimal(7,0) DEFAULT NULL COMMENT '미납해지무변경전송오류건수',
  `et_ts_erct` decimal(7,0) DEFAULT NULL COMMENT '기타전송오류건수',
  `rcv_dthms` datetime DEFAULT NULL COMMENT '수신일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_dtyns_summ_rcv_00` (`da_yymm_seq`,`oldbl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원의무미가입요약수신';
