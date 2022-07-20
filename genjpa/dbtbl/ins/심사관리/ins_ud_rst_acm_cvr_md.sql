--
-- Table structure for table `ins_ud_rst_acm_cvr_md`
--

DROP TABLE IF EXISTS `ins_ud_rst_acm_cvr_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ud_rst_acm_cvr_md` (
  `udno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '심사번호',
  `ndv_ud_seqno` decimal(5,0) NOT NULL COMMENT '개별심사순번',
  `acm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '누적유형코드',
  `sl_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '판매담보코드',
  `acm_mult` decimal(10,5) NOT NULL COMMENT '누적배수',
  `isamt_rt` decimal(12,6) NOT NULL COMMENT '가입금액비율',
  `pl_isamt` decimal(15,0) NOT NULL COMMENT '설계가입금액',
  `pl_lm_spls_amt` decimal(15,0) NOT NULL COMMENT '설계한도초과금액',
  `pl_cpmt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계보완구분코드',
  `ruamt_need_amt` decimal(15,0) NOT NULL COMMENT '감액필요금액',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`udno`,`ndv_ud_seqno`,`acm_tpcd`,`sl_cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심사결과누적담보조정';
