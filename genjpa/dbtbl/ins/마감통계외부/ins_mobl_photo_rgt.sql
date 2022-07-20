--
-- Table structure for table `ins_mobl_photo_rgt`
--

DROP TABLE IF EXISTS `ins_mobl_photo_rgt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_mobl_photo_rgt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `mobl_photo_rgtno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모바일사진등록번호',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `img_bsns_kyvl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지업무키값',
  `sms_rcvpt_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMS수신자전화번호',
  `ctm_tlno_1` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객전화번호1',
  `ctm_tlno_2` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객전화번호2',
  `ctm_tlno_3` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객전화번호3',
  `mobl_photo_rgt_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모바일사진등록내용',
  `mobl_photo_rgt_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모바일사진등록유형코드',
  `no1_mobl_photo_rgt_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번모바일사진등록값',
  `no2_mobl_photo_rgt_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번모바일사진등록값',
  `no3_mobl_photo_rgt_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번모바일사진등록값',
  `mobl_photo_rgt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모바일사진등록구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_mobl_photo_rgt_00` (`mobl_photo_rgtno`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='모바일사진등록';
