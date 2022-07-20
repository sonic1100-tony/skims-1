--
-- Table structure for table `ins_udps_info_rcv`
--

DROP TABLE IF EXISTS `ins_udps_info_rcv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_udps_info_rcv` (
  `rcvdt` date NOT NULL COMMENT '수신일자',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민번호',
  `udps_sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '변사자일련번호',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래구분코드',
  `udps_rq_admno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변사자요청관리번호',
  `nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성명',
  `dedt` date DEFAULT NULL COMMENT '사망일자',
  `acd_rcpdt` date DEFAULT NULL COMMENT '사건접수일자',
  `detc_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수사기관명',
  `detc_org_rcpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수사기관접수번호',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcvdt`,`rsno`,`udps_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='변사자정보수신';
