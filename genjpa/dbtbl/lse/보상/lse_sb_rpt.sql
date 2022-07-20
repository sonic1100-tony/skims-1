--
-- Table structure for table `lse_sb_rpt`
--

DROP TABLE IF EXISTS `lse_sb_rpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_sb_rpt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `frmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '양식코드',
  `inp_seq` decimal(3,0) NOT NULL COMMENT '입력회차',
  `ojnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목적물명',
  `itmnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목명',
  `tnd_pramt` decimal(17,2) DEFAULT NULL COMMENT '입찰예정금액',
  `sb_dl_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잔존물처리방법코드',
  `ctn_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의견내용',
  `tnd_trm_days` decimal(5,0) DEFAULT NULL COMMENT '입찰기간일수',
  `amg_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가상계좌번호',
  `dpamt` decimal(15,0) DEFAULT NULL COMMENT '입금금액',
  `feamt` decimal(15,0) DEFAULT NULL COMMENT '수수료금액',
  `adx_1_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부1파일명',
  `adx_2_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부2파일명',
  `adx_3_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부3파일명',
  `adx_4_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부4파일명',
  `adx_5_finm` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부5파일명',
  `prv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재여부',
  `clm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고내용',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `prvln_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재선종류코드',
  `prv_dthms` datetime DEFAULT NULL COMMENT '결재일시',
  `crdt` date DEFAULT NULL COMMENT '발생일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_sb_rpt_00` (`rcp_yymm`,`rcp_nv_seqno`,`plyno`,`frmcd`,`inp_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='잔존물보고';
