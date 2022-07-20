--
-- Table structure for table `lse_rlpmi_rtx_adm`
--

DROP TABLE IF EXISTS `lse_rlpmi_rtx_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_rlpmi_rtx_adm` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `nrdps_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자고객번호',
  `relpc_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '관계자고객번호',
  `requ_seq` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '의뢰회차',
  `slr_injr_hsp_rtx_ct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '급여상해입원영수증건수',
  `slr_injr_otp_rtx_ct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '급여상해통원영수증건수',
  `slr_dsas_hsp_rtx_ct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '급여질병입원영수증건수',
  `slr_dsas_otp_rtx_ct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '급여질병통원영수증건수',
  `nsly_injr_hsp_rtx_ct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '비급여상해입원영수증건수',
  `nsly_injr_otp_rtx_ct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '비급여상해통원영수증건수',
  `nsly_dsas_hsp_rtx_ct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '비급여질병입원영수증건수',
  `nsly_dsas_otp_rtx_ct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '비급여질병통원영수증건수',
  `mtetmt_rtx_ct` decimal(4,0) NOT NULL DEFAULT '0' COMMENT '도체증영수증건수',
  `injsl_rtx_ct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '주사제영수증건수',
  `mri_rtx_ct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT 'MRI영수증건수',
  `slr_injr_hsp_rtx_vldct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '급여상해입원영수증유효건수',
  `slr_injr_otp_rtx_vldct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '급여상해통원영수증유효건수',
  `slr_dsas_hsp_rtx_vldct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '급여질병입원영수증유효건수',
  `slr_dsas_otp_rtx_vldct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '급여질병통원영수증유효건수',
  `nsly_injr_hsp_rtx_vldct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '비급여상해입원영수증유효건수',
  `nsly_injr_otp_rtx_vldct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '비급여상해통원영수증유효건수',
  `nsly_dsas_hsp_rtx_vldct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '비급여질병입원영수증유효건수',
  `nsly_dsas_otp_rtx_vldct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '비급여질병통원영수증유효건수',
  `mtetmt_rtx_vldct` decimal(4,0) NOT NULL DEFAULT '0' COMMENT '도체증영수증유효건수',
  `injsl_rtx_vldct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '주사제영수증유효건수',
  `mri_rtx_vldct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT 'MRI영수증유효건수',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='실손영수증관리';
