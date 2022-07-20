--
-- Table structure for table `ins_udwr_as_st`
--

DROP TABLE IF EXISTS `ins_udwr_as_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_udwr_as_st` (
  `ud_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '심사직원번호',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `rqog_cd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청기관코드',
  `ud_pl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사설계구분코드',
  `udlmi_tp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수제한유형구분코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`ud_stfno`,`seqno`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심사자배정기준';
