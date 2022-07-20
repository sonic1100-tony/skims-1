--
-- Table structure for table `ins_accpb_cr_whpy_diss_crr`
--

DROP TABLE IF EXISTS `ins_accpb_cr_whpy_diss_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_accpb_cr_whpy_diss_crr` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `accpb_cls_flgcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '계리마감구분코드',
  `whpy_diss_no` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '제지급분해번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `prm_diss_ppdt` date DEFAULT NULL COMMENT '보험료분해계상일자',
  `accbt_tfdt` date DEFAULT NULL COMMENT '계정간이체일자',
  `tf_dlay_nt` decimal(15,0) DEFAULT NULL COMMENT '이체지연이자',
  `ex_rcv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환입환수구분코드',
  `rfamt_cr_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '준비금액발생원인코드',
  `cas_crbf_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원인발생전계약상태코드',
  `cas_craf_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원인발생후계약상태코드',
  `cas_crbf_rfamt` decimal(15,0) DEFAULT NULL COMMENT '원인발생전준비금액',
  `cas_craf_rfamt` decimal(15,0) DEFAULT NULL COMMENT '원인발생후준비금액',
  `rfd_mpf` decimal(15,0) DEFAULT NULL COMMENT '준비금차익',
  `rvi_loss` decimal(15,0) DEFAULT NULL COMMENT '부활손',
  `imptm_rfamt` decimal(15,0) DEFAULT NULL COMMENT '불능시준비금액',
  `xtntm_rfamt` decimal(15,0) DEFAULT NULL COMMENT '소멸시준비금액',
  `cnn_whpy_diss_no` varchar(14) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련제지급분해번호',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`accpb_cls_flgcd`,`whpy_diss_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계리계약제지급분해이력';
