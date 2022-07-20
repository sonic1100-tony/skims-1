--
-- Table structure for table `ins_udps_info_trs`
--

DROP TABLE IF EXISTS `ins_udps_info_trs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_udps_info_trs` (
  `rcvdt` date NOT NULL COMMENT '수신일자',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민번호',
  `udps_sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '변사자일련번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ins_inct` decimal(2,0) DEFAULT NULL COMMENT '보험가입건수',
  `ins_gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험상품명',
  `cnrdt` date DEFAULT NULL COMMENT '계약일자',
  `mpyam` decimal(15,0) DEFAULT NULL COMMENT '월납보험료',
  `dsde_isamt` decimal(15,0) DEFAULT NULL COMMENT '질병사망가입금액',
  `pub_trf_de_isamt` decimal(15,0) DEFAULT NULL COMMENT '대중교통사망가입금액',
  `trf_injr_de_isamt` decimal(15,0) DEFAULT NULL COMMENT '교통상해사망가입금액',
  `injr_de_isamt` decimal(15,0) DEFAULT NULL COMMENT '상해사망가입금액',
  `ic_gn_prst_isamt` decimal(15,0) DEFAULT NULL COMMENT '소득보장급부가입금액',
  `pfb_relnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수익자관계명',
  `cntad` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처',
  `er_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류내용',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcvdt`,`rsno`,`udps_sno`,`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='변사자정보송신';
