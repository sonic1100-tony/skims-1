--
-- Table structure for table `ccm_py_dm_nvcs_adspc`
--

DROP TABLE IF EXISTS `ccm_py_dm_nvcs_adspc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_py_dm_nvcs_adspc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `adm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '관리년월',
  `adm_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '관리일련번호',
  `adm_spc_seqno` decimal(3,0) NOT NULL COMMENT '관리내역순번',
  `hndph_suco_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰지원비항목코드',
  `crdt` date DEFAULT NULL COMMENT '발생일자',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `stplc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출발지명',
  `arplc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도착지명',
  `are_rnk_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지역급수구분코드',
  `dst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거리구분코드',
  `uramt` decimal(17,2) DEFAULT '0.00' COMMENT '발생금액',
  `trv_rs_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장사유내용',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해서열',
  `md_cnst_spc_seqno` decimal(3,0) DEFAULT NULL COMMENT '의료자문내역순번',
  `apamt` decimal(15,0) DEFAULT NULL COMMENT '승인금액',
  `cmp_cs_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상비용항목코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_py_dm_nvcs_adspc_00` (`adm_yymm`,`adm_sno`,`adm_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급손해조사비관리내역';
