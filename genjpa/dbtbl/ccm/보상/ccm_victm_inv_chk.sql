--
-- Table structure for table `ccm_victm_inv_chk`
--

DROP TABLE IF EXISTS `ccm_victm_inv_chk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_victm_inv_chk` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `chk_dthms` datetime NOT NULL COMMENT '점검일시',
  `invps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면담자구분코드',
  `inv_chk_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '면담점검구분코드',
  `inv_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면담유형코드',
  `mng_rst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치결과구분코드',
  `fund_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재원여부',
  `emgnt_chk_hsp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '불시점검병원고객번호',
  `emchk_hsp_cpent_seqno` decimal(3,0) DEFAULT NULL COMMENT '불시점검병원협력업체순번',
  `pt_st_inv_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환자상태면담내용',
  `ward_sico` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병실호수',
  `hagth_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입통원구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_victm_inv_chk_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`chk_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피해자면담점검';
