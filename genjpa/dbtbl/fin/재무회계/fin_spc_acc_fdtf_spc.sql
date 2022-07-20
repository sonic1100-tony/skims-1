--
-- Table structure for table `fin_spc_acc_fdtf_spc`
--

DROP TABLE IF EXISTS `fin_spc_acc_fdtf_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_spc_acc_fdtf_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tfdt` date NOT NULL COMMENT '이체일자',
  `tf_seqno` decimal(5,0) NOT NULL COMMENT '이체순번',
  `tf_spc_seqno` decimal(5,0) NOT NULL COMMENT '이체내역순번',
  `spc_acc_tfo2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특별계정이체2차분류코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '펀드코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `tf_uramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체발생금액',
  `tf_ntamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체이자금액',
  `ln_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대출종목코드',
  `invln_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '투융자상품코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_spc_acc_fdtf_spc_00` (`tfdt`,`tf_seqno`,`tf_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=1199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='특별계정자금이체내역';
