--
-- Table structure for table `lse_law_md_cnst_dt`
--

DROP TABLE IF EXISTS `lse_law_md_cnst_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_law_md_cnst_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `requ_seqno` decimal(5,0) NOT NULL COMMENT '의뢰순번',
  `ch_seq` decimal(10,0) NOT NULL COMMENT '변경회차',
  `oj_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목적물주소',
  `clm_plc` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고장소',
  `clm_rsm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고개요내용',
  `requ_titl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의뢰제목',
  `law_cnst_titl` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법률자문제목',
  `requ_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의뢰내용',
  `adx_1_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부1파일명',
  `adx_2_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부2파일명',
  `adx_3_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부3파일명',
  `adx_4_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부4파일명',
  `adx_5_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부5파일명',
  `adx_6_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부6파일명',
  `adx_7_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부7파일명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_law_md_cnst_dt_00` (`rcp_yymm`,`rcp_nv_seqno`,`requ_seqno`,`ch_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법률의료자문상세';
