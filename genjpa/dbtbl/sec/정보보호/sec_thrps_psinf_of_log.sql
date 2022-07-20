--
-- Table structure for table `sec_thrps_psinf_of_log`
--

DROP TABLE IF EXISTS `sec_thrps_psinf_of_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_thrps_psinf_of_log` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무구분코드',
  `psinf_of_ojccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개인정보제공목적코드',
  `info_of_dthms` datetime NOT NULL COMMENT '정보제공일시',
  `chr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '담당기관코드',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '고객명',
  `brth` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '생년월일',
  `sexcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '성별코드',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `psinf_bsnno_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보업무번호유형코드',
  `psinf_bsnno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보업무번호',
  `drut_prdt` date NOT NULL COMMENT '파기예정일자',
  `drtdt` date DEFAULT NULL COMMENT '파기일자',
  `drtno` decimal(3,0) DEFAULT NULL COMMENT '파기순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_sec_thrps_psinf_of_log_00` (`ctmno`,`cprt_entp_seqno`,`bsns_flgcd`,`psinf_of_ojccd`,`info_of_dthms`,`chr_orgcd`,`ctmnm`,`brth`,`sexcd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='제3자개인정보제공로그';
