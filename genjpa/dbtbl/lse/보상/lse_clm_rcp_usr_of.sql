--
-- Table structure for table `lse_clm_rcp_usr_of`
--

DROP TABLE IF EXISTS `lse_clm_rcp_usr_of`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_rcp_usr_of` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `usr_ad_of_itcd` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '사용자추가제공항목코드',
  `usr_of_cn` longtext COLLATE utf8mb4_bin COMMENT '사용자제공내용',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`usr_ad_of_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고접수사용자제공';
