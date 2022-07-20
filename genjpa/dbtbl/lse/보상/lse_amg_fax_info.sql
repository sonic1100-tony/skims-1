--
-- Table structure for table `lse_amg_fax_info`
--

DROP TABLE IF EXISTS `lse_amg_fax_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_amg_fax_info` (
  `rgt_dthms` datetime NOT NULL COMMENT '등록일시',
  `isps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '발급자직원번호',
  `adm_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '관리일련번호',
  `fax_rcp_seq` decimal(3,0) NOT NULL DEFAULT '1' COMMENT '팩스접수회차',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `cntad_areno` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처지역번호',
  `cntad_tno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처국번',
  `cntad_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처일련번호',
  `fax_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스지역번호',
  `fax_tno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스국번',
  `fax_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스일련번호',
  `efax_nd_dthms` datetime DEFAULT NULL COMMENT '이팩스만료일시',
  `rcp_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수담당자직원번호',
  `fx_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FAX수신여부',
  `img_ct` decimal(7,0) DEFAULT NULL COMMENT '이미지건수',
  `rcv_dthms` datetime DEFAULT NULL COMMENT '수신일시',
  `end_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종결여부',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rgt_dthms`,`isps_stfno`,`adm_sno`,`fax_rcp_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='가상팩스정보';
