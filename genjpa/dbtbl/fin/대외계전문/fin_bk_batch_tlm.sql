--
-- Table structure for table `fin_bk_batch_tlm`
--

DROP TABLE IF EXISTS `fin_bk_batch_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bk_batch_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_crno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '전문발생번호',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `deldt` date DEFAULT NULL COMMENT '거래일자',
  `stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상태코드',
  `dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래구분코드',
  `dnamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '거래금액',
  `dlaf_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '거래후잔액',
  `bk_offcd_info` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행점포코드정보',
  `dl_fd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래자금구분코드',
  `cms_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CMS구분코드',
  `cmscd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CMS코드',
  `dprnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금자명',
  `nml_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정상여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_bk_batch_tlm_00` (`tlm_crno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='은행배치전문';
