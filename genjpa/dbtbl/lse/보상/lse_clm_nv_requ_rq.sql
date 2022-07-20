--
-- Table structure for table `lse_clm_nv_requ_rq`
--

DROP TABLE IF EXISTS `lse_clm_nv_requ_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_nv_requ_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `requ_seqno` decimal(5,0) NOT NULL COMMENT '의뢰순번',
  `rq_mttcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요청사항코드',
  `rq_mtt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청사항내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_nv_requ_rq_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clm_nv_seqno`,`requ_seqno`,`rq_mttcd`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고조사의뢰요청';
