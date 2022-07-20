--
-- Table structure for table `ccm_smrt_chek_vl`
--

DROP TABLE IF EXISTS `ccm_smrt_chek_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_smrt_chek_vl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `smrt_chek_vl_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '스마트체크평가항목코드',
  `smrt_chek_vl_vlcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '스마트체크평가값코드',
  `vl_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '평가직원번호',
  `vl_tmcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '평가팀코드',
  `vl_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '평가기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_smrt_chek_vl_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`smrt_chek_vl_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='스마트체크평가';
