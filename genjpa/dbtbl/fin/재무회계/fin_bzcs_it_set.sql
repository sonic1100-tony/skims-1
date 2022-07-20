--
-- Table structure for table `fin_bzcs_it_set`
--

DROP TABLE IF EXISTS `fin_bzcs_it_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bzcs_it_set` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `csfnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분류명',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목코드',
  `ikdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종코드',
  `cvgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보군코드',
  `instm_amt` decimal(18,0) DEFAULT NULL COMMENT '보험종목금액',
  `wr_obj_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '불량물건구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업비항목세팅';
