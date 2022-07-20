--
-- Table structure for table `ccm_dmge_nv_end_imu`
--

DROP TABLE IF EXISTS `ccm_dmge_nv_end_imu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dmge_nv_end_imu` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `end_imu_seqno` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '종결면책순번',
  `end_imu_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '종결면책구분코드',
  `imu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책구분코드',
  `imu_dthms` datetime DEFAULT NULL COMMENT '면책일시',
  `imu_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책유형코드',
  `cst_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '품의담보코드',
  `cst_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품의년도',
  `cstno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품의번호',
  `cst_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '품의직원번호',
  `cst_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '품의기관코드',
  `cst_tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '품의팀기관코드',
  `cst_rsdnc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품의주재기관코드',
  `tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '팀기관코드',
  `dm_rdamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '손해감소금액',
  `rr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속직원번호',
  `rr_rsdnc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속주재기관코드',
  `rr_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속팀기관코드',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속기관코드',
  `spsk_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특기사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_dmge_nv_end_imu_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`end_imu_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피해조사종결면책';
