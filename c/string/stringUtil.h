#ifndef STRING_UTIL_H
#define STRING_UTIL_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define JSON "{\"code\":1,\"message\":\"success\",\"data\": {\"utcTime\":\"2017-10-10 13:43:00\",\"accessState\":true,\"allLang\":[\"ar-EG\",\"de-DE\",\"en-US\",\"es-ES\",\"pl-PL\",\"fr-FR\",\"it-IT\",\"ja-JP\",\"pt-PT\",\"ru-RU\",\"zh-CN\",\"zh-TW\",\"ko-KR\",\"zh-HK\",\"ca-ES\",\"da-DK\",\"fi-FI\",\"hi-IN\",\"nb-NO\",\"nl-NL\",\"sv-SE\"],\"engines\": [{\"engineId\": 0,\"type\": \"spe_micro\",\"key1\": \"9da14ccc28104f4ba481de3d65b88652\",\"priority\": 3},{\"engineId\": 1,\"type\": \"tra_micro\",\"key1\": \"edc3f3f68d1c4274b5670a3487ce2953\",\"priority\": 3},{\"engineId\": 2,\"type\": \"tts_micro\",\"key1\": \"b6528ad2d4f240e7bcc76eb538e1095c\",\"priority\": 5}],\"setting\": {\"fontSize\": 28,\"speed\": 5,\"maleDefault\": false,\"autoSpeak\": false,\"volume\": 13,\"btWorkMode\": 1,\"defaultLangF\": \"zh-CN\",\"defaultLangT\": \"en-US\"}}}"

//#define JSON "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

int testStringUtil(void);

#endif
