--
-- Table structure for table `ins_cr_py_act_rq`
--

DROP TABLE IF EXISTS `ins_cr_py_act_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_py_act_rq` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `rtn_mtdcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환급방법코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주명',
  `py_act_dpsr_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급계좌예금주관계코드',
  `kko_pay_acc_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카카오PAY계정ID',
  `cral_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화번호',
  `brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생년월일',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `cnldt` date DEFAULT NULL COMMENT '해지일자',
  `cn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해지여부',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_cr_py_act_rq_00` (`plyno`,`nds_ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=899 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약지급계좌신청';
