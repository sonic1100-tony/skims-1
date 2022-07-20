--
-- Table structure for table `gea_tnd_jon_entp`
--

DROP TABLE IF EXISTS `gea_tnd_jon_entp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_tnd_jon_entp` (
  `tndno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '입찰번호',
  `entp_seqno` decimal(5,0) NOT NULL COMMENT '업체순번',
  `tnd_entp_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '입찰업체고객번호',
  `tnamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '입찰금액',
  `tnd_gu_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '입찰보증종류코드',
  `guamt_pytdt` date NOT NULL COMMENT '보증금액납입일자',
  `tnd_guamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '입찰보증금액',
  `guamt_rtn_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '보증금액반환여부',
  `guamt_rtndt` date NOT NULL COMMENT '보증금액반환일자',
  `tnd_chrnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '입찰담당자명',
  `tlano` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '전화일련번호',
  `mv_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전화지역번호',
  `mv_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전화국번',
  `mv_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전화일련번호',
  `bi_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '낙찰여부',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`tndno`,`entp_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='입찰참가업체';
