--
-- Table structure for table `cus_inflw_ctm`
--

DROP TABLE IF EXISTS `cus_inflw_ctm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_inflw_ctm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmpg_id` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '캠페인ID',
  `rcv_dthms` datetime NOT NULL COMMENT '수신일시',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `inflw_gd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유입상품구분코드',
  `ib_inflw_chn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'IB유입채널구분코드',
  `inflw_url_nm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유입URL명',
  `inflw_ctm_afccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유입고객제휴사코드',
  `afcnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제휴사명',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `cm_bzps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통신사업자구분코드',
  `hp_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화지역번호',
  `hp_tno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화국번',
  `hp_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화일련번호',
  `home_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택전화지역번호',
  `home_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택전화국번',
  `home_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택전화일련번호',
  `wpc_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장전화지역번호',
  `wpc_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장전화국번',
  `wpc_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장전화일련번호',
  `inflw_qust_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유입질문구분코드',
  `mktg_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마케팅동의여부',
  `ad_tl_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '광고전화수신여부',
  `inflw_ctm_auth_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유입고객인증방법코드',
  `ci_no` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CI번호',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `mail_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일아이디',
  `mail_domn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일도메인',
  `jb_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업구분코드',
  `jbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업명',
  `bzpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자명',
  `ptnnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직위명',
  `cnv_av_str_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통화가능시작시간',
  `rqst_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질의내용',
  `brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생년월일',
  `sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성별코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_inflw_ctm_00` (`cmpg_id`,`rcv_dthms`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='유입고객';
