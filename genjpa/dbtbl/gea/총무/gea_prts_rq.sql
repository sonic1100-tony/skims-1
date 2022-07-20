--
-- Table structure for table `gea_prts_rq`
--

DROP TABLE IF EXISTS `gea_prts_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_prts_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rqno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '신청번호',
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rqor_cd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '신청기관코드',
  `rq_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '신청직원번호',
  `prts_rcpl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인쇄물수령지구분코드',
  `prts_rcpl_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인쇄물수령지코드',
  `rcpnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '수령인명',
  `tlano` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '전화일련번호',
  `pstno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '기본주소',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `dtadr` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '상세주소',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_prts_rq_00` (`rqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='인쇄물신청';
