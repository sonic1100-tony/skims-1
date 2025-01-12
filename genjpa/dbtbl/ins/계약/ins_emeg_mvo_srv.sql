--
-- Table structure for table `ins_emeg_mvo_srv`
--

DROP TABLE IF EXISTS `ins_emeg_mvo_srv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_emeg_mvo_srv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `srv_of_seq` decimal(5,0) NOT NULL COMMENT '서비스제공회차',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `emeg_mvo_dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동처리상태코드',
  `rcp_dthms` datetime DEFAULT NULL COMMENT '접수일시',
  `rcpr` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수자',
  `mvo_dthms` datetime DEFAULT NULL COMMENT '출동일시',
  `emeg_tra_srv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급견인서비스구분코드',
  `emgmv_mng_srvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동조치서비스코드',
  `emeg_mvo_arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동지역코드',
  `emeg_mvo_dt_plc` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동세부장소',
  `dmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '손해금액',
  `rcp_pout_mtt` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수특이사항',
  `dmdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자명',
  `dmd_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자주민번호',
  `dmd_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자전화번호',
  `escl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안심콜여부',
  `escl_inp_dthms` datetime DEFAULT NULL COMMENT '안심콜입력일시',
  `hpcl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해피콜여부',
  `hpcl_inp_dthms` datetime DEFAULT NULL COMMENT '해피콜입력일시',
  `cvap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원여부',
  `emeg_mvo_rcpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동접수번호',
  `emgmv_rq_srvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동요청서비스코드',
  `cplt_dthms` datetime DEFAULT NULL COMMENT '완료일시',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `nrdps_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자관계코드',
  `hp_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화지역번호',
  `hp_tno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화국번',
  `hp_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화일련번호',
  `mng_pout_mtt` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치특이사항',
  `mvo_brc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출동지사명',
  `o2_mvo_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차출동여부',
  `cnser_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상담원명',
  `spcrq_stfnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문요청직원명',
  `emgmv_srv_entp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '01' COMMENT '긴급출동서비스업체구분코드',
  `dat_sourc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '03' COMMENT '데이터소스구분코드',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `mvo_brc_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출동지사전화번호',
  `chbf_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전증권번호',
  `chbf_cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전담보코드',
  `chbf_cvr_seqno` decimal(5,0) DEFAULT NULL COMMENT '변경전담보순번',
  `chbf_srv_of_seq` decimal(5,0) DEFAULT NULL COMMENT '변경전서비스제공회차',
  `ch_dmd_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경요청자ID',
  `ch_rq_dthms` datetime DEFAULT NULL COMMENT '변경요청일시',
  `ch_rq_rs` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경요청사유',
  `qust_1_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문1응답코드',
  `qust_2_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설문2응답코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_emeg_mvo_srv_00` (`plyno`,`cvrcd`,`cvr_seqno`,`srv_of_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='긴급출동서비스';
