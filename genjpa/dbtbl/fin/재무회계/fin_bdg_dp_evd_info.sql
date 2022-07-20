--
-- Table structure for table `fin_bdg_dp_evd_info`
--

DROP TABLE IF EXISTS `fin_bdg_dp_evd_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bdg_dp_evd_info` (
  `dsodt` date NOT NULL COMMENT '발의일자',
  `bdg_dpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '예산발의번호',
  `dp_spc_seqno` decimal(5,0) NOT NULL COMMENT '발의내역순번',
  `evdno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '증빙번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dsodt`,`bdg_dpno`,`dp_spc_seqno`,`evdno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예산발의증빙정보';
