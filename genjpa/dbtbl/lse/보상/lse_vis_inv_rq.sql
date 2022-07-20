--
-- Table structure for table `lse_vis_inv_rq`
--

DROP TABLE IF EXISTS `lse_vis_inv_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_vis_inv_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `vis_rq_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '방문요청업무구분코드',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자직원번호',
  `rq_dthms` datetime DEFAULT NULL COMMENT '요청일시',
  `dlr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리자직원번호',
  `dl_dthms` datetime DEFAULT NULL COMMENT '처리일시',
  `vis_rq_prg_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '방문요청진행상태코드',
  `vis_rq_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '방문요청사유코드',
  `vis_rq_rs_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '방문요청사유내용',
  `vis_rq_dl_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '방문요청처리방법코드',
  `vis_rq_inv_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '방문요청면담내용',
  `vis_rq_trnm_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '방문요청전달내용',
  `clm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고내용',
  `arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지역코드',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `cm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수금직원번호',
  `inv_plc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면담장소',
  `inv_dthms` datetime DEFAULT NULL COMMENT '면담일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_vis_inv_rq_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`dm_seqno`,`vis_rq_bsns_flgcd`,`ap_str_dthms`,`ap_nd_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='방문면담요청';
