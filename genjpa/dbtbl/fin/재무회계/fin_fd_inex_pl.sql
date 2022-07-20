--
-- Table structure for table `fin_fd_inex_pl`
--

DROP TABLE IF EXISTS `fin_fd_inex_pl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_fd_inex_pl` (
  `deldt` date NOT NULL COMMENT '거래일자',
  `dp_wdrc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '입금출금구분코드',
  `fd_inex_o1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자금수지1차분류코드',
  `fd_inex_o2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자금수지2차분류코드',
  `fd_inex_o3_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자금수지3차분류코드',
  `dprnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금자명',
  `dl_woamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '거래원화금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`deldt`,`dp_wdrc_flgcd`,`fd_inex_o1_csfcd`,`fd_inex_o2_csfcd`,`fd_inex_o3_csfcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자금수지계획';
