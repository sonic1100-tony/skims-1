--
-- Table structure for table `ins_accpb_cr_whamt`
--

DROP TABLE IF EXISTS `ins_accpb_cr_whamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_accpb_cr_whamt` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `accpb_cls_flgcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '계리마감구분코드',
  `py_bjno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급대상번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `prm_diss_ppdt` date DEFAULT NULL COMMENT '보험료분해계상일자',
  `accbt_tfdt` date DEFAULT NULL COMMENT '계정간이체일자',
  `tf_dlay_nt` decimal(15,0) DEFAULT NULL COMMENT '이체지연이자',
  `ex_rcv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환입환수구분코드',
  `pybf_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급전계약상태코드',
  `cn_rtamt` decimal(17,2) DEFAULT NULL COMMENT '해약환급금액',
  `xtn_rtamt` decimal(15,0) DEFAULT NULL COMMENT '소멸환급금액',
  `ruamt_cn_amt` decimal(17,2) DEFAULT NULL COMMENT '감액해지금액',
  `mw_rtamt` decimal(17,2) DEFAULT NULL COMMENT '중도환급금액',
  `nd_rtamt` decimal(15,0) DEFAULT NULL COMMENT '만기환급금액',
  `gn_nelp_mitrm_rfamt` decimal(15,0) DEFAULT NULL COMMENT '보장미경과월기간내준비금액',
  `dlay_nt` decimal(17,2) DEFAULT NULL COMMENT '지연이자',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`accpb_cls_flgcd`,`py_bjno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계리계약제지급금';
