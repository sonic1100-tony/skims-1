--
-- Table structure for table `fin_crd_jngms`
--

DROP TABLE IF EXISTS `fin_crd_jngms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crd_jngms` (
  `jnsno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '가맹점번호',
  `crd_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '카드회사코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `jns_bprno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가맹점사업자등록번호',
  `jns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가맹점구분코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `stm_dp_dltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결제예금상대처코드',
  `jns_cmrt` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '가맹점수수료율',
  `jns_isrdt` date DEFAULT NULL COMMENT '가맹점가입일자',
  `chek_crd_cmrt` decimal(12,6) DEFAULT NULL COMMENT '체크카드수수료율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`jnsno`,`crd_cmpcd`,`ap_nddt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='카드가맹점';
