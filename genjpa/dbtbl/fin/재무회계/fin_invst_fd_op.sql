--
-- Table structure for table `fin_invst_fd_op`
--

DROP TABLE IF EXISTS `fin_invst_fd_op`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_invst_fd_op` (
  `stdt` date NOT NULL COMMENT '기준일자',
  `av_pl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '실적계획구분코드',
  `incm_exp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수입지출구분코드',
  `gn_spc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반특별구분코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '펀드코드',
  `fd_op_seqno` decimal(5,0) NOT NULL COMMENT '자금운용순번',
  `invst_fdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '투자자금코드',
  `opamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '운용금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stdt`,`av_pl_flgcd`,`incm_exp_flgcd`,`gn_spc_flgcd`,`fndcd`,`fd_op_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='투자자금운용';
