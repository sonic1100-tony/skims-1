--
-- Table structure for table `ccm_phtnp_rst`
--

DROP TABLE IF EXISTS `ccm_phtnp_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_phtnp_rst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `phtnp_dt` date NOT NULL COMMENT '촬영검사일자',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `phtnp_parcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '촬영검사부위코드',
  `phtnp_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '촬영검사항목코드',
  `phtnp_par_it_rstcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '촬영검사부위항목결과코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_phtnp_rst_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`phtnp_dt`,`ctmno`,`cprt_entp_seqno`,`phtnp_parcd`,`phtnp_itcd`,`phtnp_par_it_rstcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='촬영검사결과';
