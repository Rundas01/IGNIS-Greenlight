--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Main Deck (yours)
Debug.AddCard(98999181,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(24175232,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(98999181,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(24175232,0,0,LOCATION_DECK,1,POS_FACEDOWN)
Debug.AddCard(89463537,0,0,LOCATION_DECK,2,POS_FACEDOWN)
Debug.AddCard(68473226,0,0,LOCATION_DECK,3,POS_FACEDOWN)
Debug.AddCard(98999181,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(24175232,0,0,LOCATION_DECK,1,POS_FACEDOWN)
Debug.AddCard(89463537,0,0,LOCATION_DECK,2,POS_FACEDOWN)
Debug.AddCard(68473226,0,0,LOCATION_DECK,3,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(19230407 ,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(83764718  ,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(101102030,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(101102030,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(25397880,0,0,LOCATION_HAND,1,POS_FACEDOWN)
Debug.AddCard(23459650,0,0,LOCATION_HAND,2,POS_FACEDOWN)
Debug.AddCard(24175232,0,0,LOCATION_HAND,3,POS_FACEDOWN)
Debug.AddCard(89463537,0,0,LOCATION_HAND,4,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(50669347,0,0,LOCATION_MZONE,5,POS_FACEUP_ATTACK)
Debug.AddCard(68473226,0,0,LOCATION_MZONE,4,POS_FACEUP_DEFENSE)

--Spell & Trap Zones (yours)
Debug.AddCard(82832464,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(82832464,0,0,LOCATION_SZONE,2,POS_FACEUP)

Debug.ReloadFieldEnd()
