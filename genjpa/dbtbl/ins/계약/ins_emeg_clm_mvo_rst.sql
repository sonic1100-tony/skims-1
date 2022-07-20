--
-- Table structure for table `ins_emeg_clm_mvo_rst`
--

DROP TABLE IF EXISTS `ins_emeg_clm_mvo_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_emeg_clm_mvo_rst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `emeg_mvo_rcpno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '긴급출동접수번호',
  `mvo_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출동구분코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `clm_rcpno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고접수번호',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `ctm_cntad` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객연락처',
  `emgmv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동상태코드',
  `rq_emgmv_srvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청긴급출동서비스코드',
  `rcp_dthms` datetime DEFAULT NULL COMMENT '접수일시',
  `dl_emgmv_srvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리긴급출동서비스코드',
  `mvo_cpldt` date DEFAULT NULL COMMENT '출동완료일자',
  `mvo_engnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출동기사명',
  `mvo_engnr_cntad_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출동기사연락처전화번호',
  `emgmv_cpono_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동유무상구분코드',
  `auto_tf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동이체여부',
  `oper_dst` decimal(7,0) DEFAULT NULL COMMENT '운행거리',
  `ctm_pst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객위치구분코드',
  `mvo_are_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출동지역우편번호',
  `mvo_are_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출동지역주소',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `mvo_entnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출동업체명',
  `mvo_entp_cntad_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출동업체연락처전화번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_emeg_clm_mvo_rst_00` (`emeg_mvo_rcpno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='긴급사고출동결과';
