--
-- Table structure for table `ccm_cidps_uramt_crr`
--

DROP TABLE IF EXISTS `ccm_cidps_uramt_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cidps_uramt_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `idm_victm_seqno` decimal(3,0) NOT NULL COMMENT '구상피해자순번',
  `cidps_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자서열',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `idm_uramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '구상발생금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cidps_uramt_crr_00` (`idm_rcp_yymm`,`idm_rcp_sno`,`clm_cvrcd`,`idm_victm_seqno`,`cidps_rank`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피구상자발생금액이력';
