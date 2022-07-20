--
-- Table structure for table `ccm_ctn_ordr_mmt`
--

DROP TABLE IF EXISTS `ccm_ctn_ordr_mmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_ctn_ordr_mmt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `ordr_mtt_seqno` decimal(5,0) NOT NULL COMMENT '지시사항순번',
  `prg_rnd_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진행경과내용',
  `ordr_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지시내용',
  `ordr_dt` date DEFAULT NULL COMMENT '지시일자',
  `idctr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지시자직원번호',
  `mng_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치여부',
  `mng_dtcn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치세부내용',
  `mng_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치직원번호',
  `mng_dthms` datetime DEFAULT NULL COMMENT '조치일시',
  `ordr_trm_osne_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지시기간준수여부',
  `exec_trm_osne_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이행기간준수여부',
  `dat_vald_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '데이터유효여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_ctn_ordr_mmt_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`ordr_mtt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='의견지시사항';
