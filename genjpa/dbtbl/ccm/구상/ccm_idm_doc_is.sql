--
-- Table structure for table `ccm_idm_doc_is`
--

DROP TABLE IF EXISTS `ccm_idm_doc_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_idm_doc_is` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `is_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '발급년월',
  `is_seqno` decimal(5,0) NOT NULL COMMENT '발급순번',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `cidps_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자서열',
  `idm_doc_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '구상공문종류코드',
  `isps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '발급자직원번호',
  `isps_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '발급자기관코드',
  `isps_tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '발급자팀기관코드',
  `isdt` date NOT NULL COMMENT '발급일자',
  `thcp_py_ibamt` decimal(15,0) DEFAULT NULL COMMENT '당사지급보험금액',
  `thcp_fltrt` decimal(3,0) DEFAULT NULL COMMENT '당사과실율',
  `otcm_fltrt` decimal(3,0) DEFAULT NULL COMMENT '타사과실율',
  `thcp_emamt` decimal(15,0) DEFAULT NULL COMMENT '당사청구금액',
  `otcm_rcpno` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사접수번호',
  `otcm_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사차량번호',
  `otcm_chrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사담당자명',
  `doc_snd_et_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공문발송기타사항',
  `doc_snd_dlay_ntamt` decimal(15,0) DEFAULT NULL COMMENT '공문발송지연이자금액',
  `doc_snd_lw_csamt` decimal(15,0) DEFAULT NULL COMMENT '공문발송소송비용금액',
  `doc_snd_clmcn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공문발송사고내용',
  `doc_snd_clm_dthms` datetime DEFAULT NULL COMMENT '공문발송사고일시',
  `doc_snd_clm_plc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공문발송사고장소',
  `doc_snd_pcamt` decimal(15,0) DEFAULT NULL COMMENT '공문발송원금액',
  `doc_snd_rpamt` decimal(15,0) DEFAULT NULL COMMENT '공문발송변제금액',
  `doc_snd_dsamt` decimal(15,0) DEFAULT NULL COMMENT '공문발송결정금액',
  `doc_snd_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공문발송은행코드',
  `doc_snd_amg_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공문발송가상계좌번호',
  `crmcs_acd_cn` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '형사사건내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_idm_doc_is_00` (`is_yymm`,`is_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='구상공문발급';
