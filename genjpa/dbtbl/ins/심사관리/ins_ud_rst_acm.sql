--
-- Table structure for table `ins_ud_rst_acm`
--

DROP TABLE IF EXISTS `ins_ud_rst_acm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ud_rst_acm` (
  `udno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '심사번호',
  `ndv_ud_seqno` decimal(5,0) NOT NULL COMMENT '개별심사순번',
  `acm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '누적유형코드',
  `thcp_acm_isamt` decimal(15,0) NOT NULL COMMENT '당사누적가입금액',
  `bscrl_acm_isamt` decimal(15,0) NOT NULL COMMENT '업계누적가입금액',
  `pl_isamt` decimal(15,0) NOT NULL COMMENT '설계가입금액',
  `pl_isamt_ch_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계가입금액변경구분코드',
  `udrtk_lm_amt` decimal(15,0) NOT NULL COMMENT '인수한도금액',
  `bscrl_lmamt` decimal(15,0) NOT NULL COMMENT '업계한도금액',
  `acm_db_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '누적중복유형코드',
  `db_chek_stamt` decimal(15,0) NOT NULL COMMENT '중복체크기준금액',
  `thcp_udrtk_avamt` decimal(15,0) NOT NULL COMMENT '당사인수가능금액',
  `bscrl_udrtk_avamt` decimal(15,0) NOT NULL COMMENT '업계인수가능금액',
  `fnl_udrtk_avamt` decimal(15,0) NOT NULL COMMENT '최종인수가능금액',
  `pl_lm_spls_amt` decimal(15,0) NOT NULL COMMENT '설계한도초과금액',
  `pl_lm_spls_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계한도초과구분코드',
  `scwnd_lmit_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상병제한담보구분코드',
  `pl_cpmt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계보완구분코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`udno`,`ndv_ud_seqno`,`acm_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심사결과누적';
