--
-- Table structure for table `ccm_adv_aos_img_file`
--

DROP TABLE IF EXISTS `ccm_adv_aos_img_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_adv_aos_img_file` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `rltm_rcv_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '실시간수신여부',
  `frst_stm_dm_ts_seqno` decimal(3,0) NOT NULL COMMENT '선견적청구전송순번',
  `frst_stm_dm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '선견적청구구분코드',
  `dmdr_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '청구처종류코드',
  `img_file_seqno` decimal(3,0) NOT NULL COMMENT '이미지파일순번',
  `frst_stm_dm_seq` decimal(3,0) NOT NULL COMMENT '선견적청구회차',
  `dmdr_bzmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '청구처사업자번호',
  `aos_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'AOS담보코드',
  `frst_stm_dm_seqno` decimal(3,0) NOT NULL COMMENT '선견적청구순번',
  `aos_photo_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'AOS사진분류코드',
  `aos_file_ts_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT 'AOS파일전송여부',
  `aos_img_finm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT 'AOS이미지파일명',
  `aos_file_xts_nm` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'AOS파일확장자명',
  `aos_img_file_size` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT 'AOS이미지파일크기',
  `aos_dir_nm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AOS디렉토리명',
  `aos_file_pht_dt` date DEFAULT NULL COMMENT 'AOS파일촬영일자',
  `aos_cam_mnftr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AOS카메라제조사명',
  `aos_cam_mdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AOS카메라모델명',
  `aos_photo_mdf_sw` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AOS사진수정소프트웨어',
  `aos_photo_xpnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AOS사진설명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_adv_aos_img_file_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`rltm_rcv_yn`,`frst_stm_dm_ts_seqno`,`frst_stm_dm_flgcd`,`dmdr_kndcd`,`img_file_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='선진화AOS이미지파일';
