--
-- Table structure for table `ins_cr_clm_cr`
--

DROP TABLE IF EXISTS `ins_cr_clm_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_clm_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `clm_rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '사고접수번호',
  `vlt_seqno` decimal(3,0) NOT NULL COMMENT '위반순번',
  `prvdt` date DEFAULT NULL COMMENT '결재일자',
  `cmp_cnr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상센터기관코드',
  `clmdt` date DEFAULT NULL COMMENT '사고일자',
  `rcpdt` date DEFAULT NULL COMMENT '접수일자',
  `carno_hngl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호한글',
  `nrdcd` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자코드',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `o1dlg_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차처리담당직원번호',
  `o1_clm_cr_xmn_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차사고계약검토상태코드',
  `o1_xmn_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차검토내용',
  `o1_xmn_iptdt` date DEFAULT NULL COMMENT '1차검토입력일자',
  `o2dlg_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차처리담당직원번호',
  `o2_clm_cr_xmn_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차사고계약검토상태코드',
  `o2_xmn_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차검토내용',
  `o2_xmn_iptdt` date DEFAULT NULL COMMENT '2차검토입력일자',
  `o3_dl_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차처리담당직원번호',
  `o3_clm_cr_xmn_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차사고계약검토상태코드',
  `o3_xmn_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차검토내용',
  `o3_xmn_iptdt` date DEFAULT NULL COMMENT '3차검토입력일자',
  `et_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타사항',
  `et_mtt_inp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타사항입력직원번호',
  `fnl_ch_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종변경직원번호',
  `fnl_clm_cr_xmn_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종사고계약검토상태코드',
  `cr_vlt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약위반구분코드',
  `prm_diamt` decimal(15,0) DEFAULT NULL COMMENT '보험료차액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_clm_cr_00` (`plyno`,`clm_rcpno`,`vlt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차사고계약';
