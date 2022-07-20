--
-- Table structure for table `ins_ihthe_inq_reply_mtt`
--

DROP TABLE IF EXISTS `ins_ihthe_inq_reply_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ihthe_inq_reply_mtt` (
  `ihthe_inq_log_no` decimal(13,0) NOT NULL COMMENT '상속인조회로그번호',
  `log_ordr` decimal(2,0) NOT NULL COMMENT '로그순차',
  `ihthe_da_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상속인자료구분코드',
  `ihthe_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상속인계약구분코드',
  `ply_lnno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권대출번호',
  `ihthe_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상속인계약상태코드',
  `dh_orgnm` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관명',
  `dh_org_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관전화번호',
  `ln_tblam` decimal(15,0) DEFAULT NULL COMMENT '대출잔액',
  `ln_endt` date DEFAULT NULL COMMENT '대출만기일자',
  `gd_slnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품판매명',
  `uramt` decimal(17,2) DEFAULT NULL COMMENT '발생금액',
  `uramt_cc_stdt` date DEFAULT NULL COMMENT '발생금액산출기준일자',
  `dlay_nt` decimal(17,2) DEFAULT NULL COMMENT '지연이자',
  `dlay_nt_cal_stdt` date DEFAULT NULL COMMENT '지연이자계산기준일자',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`ihthe_inq_log_no`,`log_ordr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상속인조회회보사항';
