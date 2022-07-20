--
-- Table structure for table `fin_jrd_uof`
--

DROP TABLE IF EXISTS `fin_jrd_uof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_jrd_uof` (
  `jrd_uofcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관할관청코드',
  `jrd_uofnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '관할관청명',
  `mega_auten_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '광역자치단체구분코드',
  `tx_pym_prs_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세금납부대표기관코드',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `ri_or_lrdlp` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리/대량배달처',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `tlno_info` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화번호정보',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`jrd_uofcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='관할관청';
