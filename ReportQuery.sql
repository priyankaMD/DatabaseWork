## Participant by collection protocol
Select cp.short_title,count(participant_id)
From catissue_coll_prot_reg rg
  JOIN catissue_collection_protocol cp ON rg.collection_protocol_id = cp.identifier
  JOIN catissue_participant cpr ON rg.Participant_id  = cpr.identifier
Where cp.activity_status != "Disabled" and cpr.activity_status != "Disabled"
Group by cp.short_title;

## Participants per Race value
SELECT cpv.value, COUNT(part.identifier) AS cnt
FROM catissue_race race
  RIGHT JOIN catissue_participant part ON race.participant_id = part.identifier
  LEFT JOIN catissue_permissible_value cpv  ON race.race_id = cpv.identifier
WHERE  part.activity_status != "Disabled"
GROUP BY cpv.value;

## Participant per site
SELECT cs.name,count(pe.participant_id) as cnt
FROM catissue_site cs
  JOIN catissue_coll_prot_reg pe ON cs.identifier = pe.site_id
  JOIN catissue_participant part ON pe.participant_id = part.identifier
WHERE cs.activity_status != "Disabled" and part.activity_status != "Disabled"
Group by cs.name;

## Participant per site per collection protocol
SELECT cs.name,count(pe.participant_id) as cnt,pe.collection_protocol_id
FROM catissue_site cs
  JOIN catissue_coll_prot_reg pe ON cs.identifier = pe.site_id
  JOIN catissue_participant part ON pe.participant_id = part.identifier
WHERE cs.activity_status != "Disabled" and part.activity_status != "Disabled"
Group by cs.name,pe.collection_protocol_id;


## Participants per event.

SELECT cpe.collection_point_label , count(scg.collection_protocol_reg_id)
FROM catissue_coll_prot_event cpe
  JOIN catissue_specimen_coll_group scg ON cpe.identifier = scg.collection_protocol_event_id
GROUP BY cpe.collection_point_label

SELECT ccp.short_title,cpe.collection_point_label , count(scg.collection_protocol_reg_id)
FROM catissue_coll_prot_event cpe
  JOIN catissue_specimen_coll_group scg ON cpe.identifier = scg.collection_protocol_event_id
  JOIN catissue_collection_protocol ccp ON cpe.collection_protocol_id = ccp.identifier
GROUP BY ccp.short_title,cpe.collection_point_label;

## Participants per event per CP.

SELECT ccp.short_title,cpe.collection_point_label , count(scg.collection_protocol_reg_id)
FROM catissue_coll_prot_event cpe
  JOIN catissue_specimen_coll_group scg ON cpe.identifier = scg.collection_protocol_event_id
  JOIN catissue_collection_protocol ccp ON cpe.collection_protocol_id = ccp.identifier
WHERE cpe.activity_status != "Disabled" and ccp.activity_status != "Disabled"
GROUP BY ccp.short_title,cpe.collection_point_label;


## Count of specimens collected per participant per CP
SELECT cpr.collection_protocol_id, cpr.participant_id, count(cs.label)
FROM catissue_specimen_coll_group scg
	JOIN catissue_specimen cs ON scg.identifier= cs.specimen_collection_group_id
	JOIN catissue_coll_prot_reg cpr ON scg.collection_protocol_reg_id = cpr. Identifier
WHERE cs.activity_status != "Disabled"
GROUP BY cpr.collection_protocol_id, cpr.participant_id;
