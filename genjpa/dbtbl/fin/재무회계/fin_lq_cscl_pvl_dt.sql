--
-- Table structure for table `fin_lq_cscl_pvl_dt`
--

DROP TABLE IF EXISTS `fin_lq_cscl_pvl_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_lq_cscl_pvl_dt` (
  `lq_dotno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '청산일계번호',
  `lq_acc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '청산계정구분코드',
  `lq_pvl_seqno` decimal(5,0) NOT NULL COMMENT '청산계상순번',
  `woncr_poamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화계상금액',
  `fcamt_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화금액금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`lq_dotno`,`lq_acc_flgcd`,`lq_pvl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='청산건별계상상세';
