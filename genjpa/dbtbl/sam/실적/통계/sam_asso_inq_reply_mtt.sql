--
-- Table structure for table `sam_asso_inq_reply_mtt`
--

DROP TABLE IF EXISTS `sam_asso_inq_reply_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam_asso_inq_reply_mtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민등록번호',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무구분코드',
  `stdt` date NOT NULL COMMENT '기준일자',
  `tlm_pno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전문고유번호',
  `da_seqno` decimal(7,0) NOT NULL COMMENT '자료순번',
  `nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성명',
  `ins_crr_quf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험경력자격구분코드',
  `rlt_bz_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대영업구분코드',
  `ins_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험회사코드',
  `rgtno` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록번호',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `asso_rgtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협회등록코드',
  `rsrdt` date DEFAULT NULL COMMENT '말소일자',
  `rsrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '말소코드',
  `asso_rgrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협회등록자코드',
  `asso_rgrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협회등록자명',
  `nlisr_asso_fnl_edbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손보협회최종학력코드',
  `nlisr_asso_scil_crrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손보협회사회경력코드',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `dong_belo_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동이하주소',
  `fnl_mdfdt` date DEFAULT NULL COMMENT '최종수정일자',
  `dmins_asso_rlt_bz_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해보험협회상대영업구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_sam_asso_inq_reply_mtt_00` (`rsno`,`bsns_flgcd`,`stdt`,`tlm_pno`,`da_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='협회조회회보사항';
