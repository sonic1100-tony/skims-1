--
-- Table structure for table `ins_pln_rcn_adm_rst_rcv`
--

DROP TABLE IF EXISTS `ins_pln_rcn_adm_rst_rcv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pln_rcn_adm_rst_rcv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `fnl_nds_seq` decimal(3,0) NOT NULL COMMENT '최종배서회차',
  `tlm_trrv_ercd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문송수신오류코드',
  `afc_rcpno` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제휴사접수번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_pln_rcn_adm_rst_rcv_00` (`plno`,`fnl_nds_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='현장실사관리결과수신';
