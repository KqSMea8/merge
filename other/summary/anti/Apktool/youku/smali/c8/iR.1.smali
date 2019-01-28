.class public Lc8/iR;
.super Ljava/lang/Object;
.source "XmlUtil.java"


# static fields
.field public static final XMLFILE:Ljava/lang/String; = "sdkconfig.xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doParser(Ljava/io/InputStream;)Lc8/TQ;
    .locals 15
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 36
    const/4 v11, 0x0

    .line 37
    .local v11, "sdk":Lc8/TQ;
    const/4 v1, 0x0

    .line 38
    .local v1, "argument":Lc8/NQ;
    const/4 v3, 0x0

    .line 39
    .local v3, "company":Lc8/OQ;
    const/4 v8, 0x0

    .line 41
    .local v8, "event":Lc8/RQ;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 42
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v13, "UTF-8"

    invoke-interface {v10, p0, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 43
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .local v0, "_event":I
    move-object v9, v8

    .end local v8    # "event":Lc8/RQ;
    .local v9, "event":Lc8/RQ;
    move-object v4, v3

    .end local v3    # "company":Lc8/OQ;
    .local v4, "company":Lc8/OQ;
    move-object v2, v1

    .end local v1    # "argument":Lc8/NQ;
    .local v2, "argument":Lc8/NQ;
    move-object v12, v11

    .line 44
    .end local v11    # "sdk":Lc8/TQ;
    .local v12, "sdk":Lc8/TQ;
    :goto_0
    const/4 v13, 0x1

    if-ne v0, v13, :cond_0

    move-object v8, v9

    .end local v9    # "event":Lc8/RQ;
    .restart local v8    # "event":Lc8/RQ;
    move-object v3, v4

    .end local v4    # "company":Lc8/OQ;
    .restart local v3    # "company":Lc8/OQ;
    move-object v1, v2

    .end local v2    # "argument":Lc8/NQ;
    .restart local v1    # "argument":Lc8/NQ;
    move-object v11, v12

    .line 181
    .end local v0    # "_event":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "sdk":Lc8/TQ;
    .restart local v11    # "sdk":Lc8/TQ;
    :goto_1
    return-object v11

    .line 45
    .end local v1    # "argument":Lc8/NQ;
    .end local v3    # "company":Lc8/OQ;
    .end local v8    # "event":Lc8/RQ;
    .end local v11    # "sdk":Lc8/TQ;
    .restart local v0    # "_event":I
    .restart local v2    # "argument":Lc8/NQ;
    .restart local v4    # "company":Lc8/OQ;
    .restart local v9    # "event":Lc8/RQ;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "sdk":Lc8/TQ;
    :cond_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v8, v9

    .end local v9    # "event":Lc8/RQ;
    .restart local v8    # "event":Lc8/RQ;
    move-object v3, v4

    .end local v4    # "company":Lc8/OQ;
    .restart local v3    # "company":Lc8/OQ;
    move-object v1, v2

    .end local v2    # "argument":Lc8/NQ;
    .restart local v1    # "argument":Lc8/NQ;
    move-object v11, v12

    .line 176
    .end local v12    # "sdk":Lc8/TQ;
    .restart local v11    # "sdk":Lc8/TQ;
    :goto_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move-object v9, v8

    .end local v8    # "event":Lc8/RQ;
    .restart local v9    # "event":Lc8/RQ;
    move-object v4, v3

    .end local v3    # "company":Lc8/OQ;
    .restart local v4    # "company":Lc8/OQ;
    move-object v2, v1

    .end local v1    # "argument":Lc8/NQ;
    .restart local v2    # "argument":Lc8/NQ;
    move-object v12, v11

    .end local v11    # "sdk":Lc8/TQ;
    .restart local v12    # "sdk":Lc8/TQ;
    goto :goto_0

    .line 47
    :pswitch_1
    :try_start_1
    new-instance v11, Lc8/TQ;

    invoke-direct {v11}, Lc8/TQ;-><init>()V

    .end local v12    # "sdk":Lc8/TQ;
    .restart local v11    # "sdk":Lc8/TQ;
    move-object v8, v9

    .end local v9    # "event":Lc8/RQ;
    .restart local v8    # "event":Lc8/RQ;
    move-object v3, v4

    .end local v4    # "company":Lc8/OQ;
    .restart local v3    # "company":Lc8/OQ;
    move-object v1, v2

    .line 48
    .end local v2    # "argument":Lc8/NQ;
    .restart local v1    # "argument":Lc8/NQ;
    goto :goto_2

    .line 50
    .end local v1    # "argument":Lc8/NQ;
    .end local v3    # "company":Lc8/OQ;
    .end local v8    # "event":Lc8/RQ;
    .end local v11    # "sdk":Lc8/TQ;
    .restart local v2    # "argument":Lc8/NQ;
    .restart local v4    # "company":Lc8/OQ;
    .restart local v9    # "event":Lc8/RQ;
    .restart local v12    # "sdk":Lc8/TQ;
    :pswitch_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "elementName":Ljava/lang/String;
    const-string/jumbo v13, "offlineCache"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 53
    new-instance v13, Lc8/SQ;

    invoke-direct {v13}, Lc8/SQ;-><init>()V

    iput-object v13, v12, Lc8/TQ;->offlineCache:Lc8/SQ;

    .line 54
    :cond_1
    iget-object v13, v12, Lc8/TQ;->offlineCache:Lc8/SQ;

    if-eqz v13, :cond_4

    .line 55
    const-string/jumbo v13, "length"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 56
    iget-object v13, v12, Lc8/TQ;->offlineCache:Lc8/SQ;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lc8/SQ;->length:Ljava/lang/String;

    .line 57
    :cond_2
    const-string/jumbo v13, "queueExpirationSecs"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 58
    iget-object v13, v12, Lc8/TQ;->offlineCache:Lc8/SQ;

    .line 59
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    .line 58
    iput-object v14, v13, Lc8/SQ;->queueExpirationSecs:Ljava/lang/String;

    .line 60
    :cond_3
    const-string/jumbo v13, "timeout"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 61
    iget-object v13, v12, Lc8/TQ;->offlineCache:Lc8/SQ;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lc8/SQ;->timeout:Ljava/lang/String;

    .line 64
    :cond_4
    const-string/jumbo v13, "companies"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 65
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Lc8/TQ;->companies:Ljava/util/List;

    .line 66
    :cond_5
    iget-object v13, v12, Lc8/TQ;->companies:Ljava/util/List;

    if-eqz v13, :cond_26

    const-string/jumbo v13, "company"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 67
    new-instance v3, Lc8/OQ;

    invoke-direct {v3}, Lc8/OQ;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    .end local v4    # "company":Lc8/OQ;
    .restart local v3    # "company":Lc8/OQ;
    :goto_3
    if-eqz v3, :cond_25

    .line 69
    :try_start_2
    const-string/jumbo v13, "name"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    iget-object v13, v3, Lc8/OQ;->name:Ljava/lang/String;

    if-nez v13, :cond_6

    .line 70
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lc8/OQ;->name:Ljava/lang/String;

    .line 71
    :cond_6
    const-string/jumbo v13, "domain"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 72
    new-instance v13, Lc8/QQ;

    invoke-direct {v13}, Lc8/QQ;-><init>()V

    iput-object v13, v3, Lc8/OQ;->domain:Lc8/QQ;

    .line 73
    :cond_7
    iget-object v13, v3, Lc8/OQ;->domain:Lc8/QQ;

    if-eqz v13, :cond_8

    .line 74
    const-string/jumbo v13, "url"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 75
    iget-object v13, v3, Lc8/OQ;->domain:Lc8/QQ;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lc8/QQ;->url:Ljava/lang/String;

    .line 77
    :cond_8
    const-string/jumbo v13, "signature"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 78
    new-instance v13, Lc8/VQ;

    invoke-direct {v13}, Lc8/VQ;-><init>()V

    iput-object v13, v3, Lc8/OQ;->signature:Lc8/VQ;

    .line 79
    :cond_9
    iget-object v13, v3, Lc8/OQ;->signature:Lc8/VQ;

    if-eqz v13, :cond_b

    .line 80
    const-string/jumbo v13, "publicKey"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 81
    iget-object v13, v3, Lc8/OQ;->signature:Lc8/VQ;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lc8/VQ;->publicKey:Ljava/lang/String;

    .line 82
    :cond_a
    const-string/jumbo v13, "paramKey"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 83
    iget-object v13, v3, Lc8/OQ;->signature:Lc8/VQ;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lc8/VQ;->paramKey:Ljava/lang/String;

    .line 85
    :cond_b
    const-string/jumbo v13, "switch"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 86
    new-instance v13, Lc8/WQ;

    invoke-direct {v13}, Lc8/WQ;-><init>()V

    iput-object v13, v3, Lc8/OQ;->sswitch:Lc8/WQ;

    .line 87
    :cond_c
    iget-object v13, v3, Lc8/OQ;->sswitch:Lc8/WQ;

    if-eqz v13, :cond_11

    .line 88
    const-string/jumbo v13, "isTrackLocation"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 89
    iget-object v13, v3, Lc8/OQ;->sswitch:Lc8/WQ;

    .line 90
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 89
    iput-boolean v14, v13, Lc8/WQ;->isTrackLocation:Z

    .line 91
    :cond_d
    const-string/jumbo v13, "offlineCacheExpiration"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 92
    iget-object v13, v3, Lc8/OQ;->sswitch:Lc8/WQ;

    .line 93
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    .line 92
    iput-object v14, v13, Lc8/WQ;->offlineCacheExpiration:Ljava/lang/String;

    .line 94
    :cond_e
    const-string/jumbo v13, "encrypt"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 95
    iget-object v13, v3, Lc8/OQ;->sswitch:Lc8/WQ;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    iput-object v14, v13, Lc8/WQ;->encrypt:Ljava/util/Map;

    .line 96
    :cond_f
    iget-object v13, v3, Lc8/OQ;->sswitch:Lc8/WQ;

    iget-object v13, v13, Lc8/WQ;->encrypt:Ljava/util/Map;

    if-eqz v13, :cond_11

    .line 97
    const-string/jumbo v13, "MAC"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 98
    const-string/jumbo v13, "IDA"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 99
    const-string/jumbo v13, "IMEI"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 100
    const-string/jumbo v13, "ANDROID"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 101
    :cond_10
    iget-object v13, v3, Lc8/OQ;->sswitch:Lc8/WQ;

    iget-object v13, v13, Lc8/WQ;->encrypt:Ljava/util/Map;

    .line 102
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    .line 101
    invoke-interface {v13, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_11
    const-string/jumbo v13, "config"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 108
    new-instance v13, Lc8/PQ;

    invoke-direct {v13}, Lc8/PQ;-><init>()V

    iput-object v13, v3, Lc8/OQ;->config:Lc8/PQ;

    .line 109
    :cond_12
    iget-object v13, v3, Lc8/OQ;->config:Lc8/PQ;

    if-eqz v13, :cond_24

    .line 110
    const-string/jumbo v13, "arguments"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 113
    iget-object v13, v3, Lc8/OQ;->config:Lc8/PQ;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v13, Lc8/PQ;->arguments:Ljava/util/List;

    .line 114
    :cond_13
    iget-object v13, v3, Lc8/OQ;->config:Lc8/PQ;

    iget-object v13, v13, Lc8/PQ;->arguments:Ljava/util/List;

    if-eqz v13, :cond_23

    .line 115
    const-string/jumbo v13, "argument"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 116
    new-instance v1, Lc8/NQ;

    invoke-direct {v1}, Lc8/NQ;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 117
    .end local v2    # "argument":Lc8/NQ;
    .restart local v1    # "argument":Lc8/NQ;
    :goto_4
    if-eqz v1, :cond_17

    .line 118
    :try_start_3
    const-string/jumbo v13, "key"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 119
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lc8/NQ;->key:Ljava/lang/String;

    .line 120
    :cond_14
    const-string/jumbo v13, "value"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 121
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lc8/NQ;->value:Ljava/lang/String;

    .line 122
    :cond_15
    const-string/jumbo v13, "urlEncode"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 124
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 123
    iput-boolean v13, v1, Lc8/NQ;->urlEncode:Z

    .line 125
    :cond_16
    const-string/jumbo v13, "isRequired"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 127
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 126
    iput-boolean v13, v1, Lc8/NQ;->isRequired:Z

    .line 129
    :cond_17
    const-string/jumbo v13, "events"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 132
    iget-object v13, v3, Lc8/OQ;->config:Lc8/PQ;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v13, Lc8/PQ;->events:Ljava/util/List;

    .line 133
    :cond_18
    iget-object v13, v3, Lc8/OQ;->config:Lc8/PQ;

    iget-object v13, v13, Lc8/PQ;->events:Ljava/util/List;

    if-eqz v13, :cond_22

    .line 134
    const-string/jumbo v13, "event"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 135
    new-instance v8, Lc8/RQ;

    invoke-direct {v8}, Lc8/RQ;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 136
    .end local v9    # "event":Lc8/RQ;
    .restart local v8    # "event":Lc8/RQ;
    :goto_5
    if-eqz v8, :cond_1b

    .line 138
    :try_start_4
    const-string/jumbo v13, "key"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 139
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lc8/RQ;->key:Ljava/lang/String;

    .line 140
    :cond_19
    const-string/jumbo v13, "value"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 141
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lc8/RQ;->value:Ljava/lang/String;

    .line 142
    :cond_1a
    const-string/jumbo v13, "urlEncode"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 144
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 143
    iput-boolean v13, v8, Lc8/RQ;->urlEncode:Z

    .line 147
    :cond_1b
    :goto_6
    const-string/jumbo v13, "separator"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 148
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lc8/OQ;->separator:Ljava/lang/String;

    .line 149
    :cond_1c
    const-string/jumbo v13, "equalizer"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 150
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lc8/OQ;->equalizer:Ljava/lang/String;

    .line 151
    :cond_1d
    const-string/jumbo v13, "timeStampUseSecond"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 153
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 152
    iput-boolean v13, v3, Lc8/OQ;->timeStampUseSecond:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v11, v12

    .line 156
    .end local v12    # "sdk":Lc8/TQ;
    .restart local v11    # "sdk":Lc8/TQ;
    goto/16 :goto_2

    .line 159
    .end local v1    # "argument":Lc8/NQ;
    .end local v3    # "company":Lc8/OQ;
    .end local v6    # "elementName":Ljava/lang/String;
    .end local v8    # "event":Lc8/RQ;
    .end local v11    # "sdk":Lc8/TQ;
    .restart local v2    # "argument":Lc8/NQ;
    .restart local v4    # "company":Lc8/OQ;
    .restart local v9    # "event":Lc8/RQ;
    .restart local v12    # "sdk":Lc8/TQ;
    :pswitch_3
    :try_start_5
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, "endElement":Ljava/lang/String;
    const-string/jumbo v13, "company"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 161
    iget-object v13, v12, Lc8/TQ;->companies:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 162
    const/4 v3, 0x0

    .line 164
    .end local v4    # "company":Lc8/OQ;
    .restart local v3    # "company":Lc8/OQ;
    :goto_7
    :try_start_6
    const-string/jumbo v13, "argument"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 165
    iget-object v13, v3, Lc8/OQ;->config:Lc8/PQ;

    iget-object v13, v13, Lc8/PQ;->arguments:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 167
    const/4 v1, 0x0

    .line 169
    .end local v2    # "argument":Lc8/NQ;
    .restart local v1    # "argument":Lc8/NQ;
    :goto_8
    :try_start_7
    const-string/jumbo v13, "event"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 170
    iget-object v13, v3, Lc8/OQ;->config:Lc8/PQ;

    iget-object v13, v13, Lc8/PQ;->events:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 171
    const/4 v8, 0x0

    .end local v9    # "event":Lc8/RQ;
    .restart local v8    # "event":Lc8/RQ;
    move-object v11, v12

    .end local v12    # "sdk":Lc8/TQ;
    .restart local v11    # "sdk":Lc8/TQ;
    goto/16 :goto_2

    .line 178
    .end local v0    # "_event":I
    .end local v7    # "endElement":Ljava/lang/String;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v5

    .line 179
    .local v5, "e":Ljava/lang/Exception;
    :goto_9
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 178
    .end local v1    # "argument":Lc8/NQ;
    .end local v3    # "company":Lc8/OQ;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "event":Lc8/RQ;
    .end local v11    # "sdk":Lc8/TQ;
    .restart local v0    # "_event":I
    .restart local v2    # "argument":Lc8/NQ;
    .restart local v4    # "company":Lc8/OQ;
    .restart local v9    # "event":Lc8/RQ;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "sdk":Lc8/TQ;
    :catch_1
    move-exception v5

    move-object v8, v9

    .end local v9    # "event":Lc8/RQ;
    .restart local v8    # "event":Lc8/RQ;
    move-object v3, v4

    .end local v4    # "company":Lc8/OQ;
    .restart local v3    # "company":Lc8/OQ;
    move-object v1, v2

    .end local v2    # "argument":Lc8/NQ;
    .restart local v1    # "argument":Lc8/NQ;
    move-object v11, v12

    .end local v12    # "sdk":Lc8/TQ;
    .restart local v11    # "sdk":Lc8/TQ;
    goto :goto_9

    .end local v1    # "argument":Lc8/NQ;
    .end local v8    # "event":Lc8/RQ;
    .end local v11    # "sdk":Lc8/TQ;
    .restart local v2    # "argument":Lc8/NQ;
    .restart local v9    # "event":Lc8/RQ;
    .restart local v12    # "sdk":Lc8/TQ;
    :catch_2
    move-exception v5

    move-object v8, v9

    .end local v9    # "event":Lc8/RQ;
    .restart local v8    # "event":Lc8/RQ;
    move-object v1, v2

    .end local v2    # "argument":Lc8/NQ;
    .restart local v1    # "argument":Lc8/NQ;
    move-object v11, v12

    .end local v12    # "sdk":Lc8/TQ;
    .restart local v11    # "sdk":Lc8/TQ;
    goto :goto_9

    .end local v8    # "event":Lc8/RQ;
    .end local v11    # "sdk":Lc8/TQ;
    .restart local v9    # "event":Lc8/RQ;
    .restart local v12    # "sdk":Lc8/TQ;
    :catch_3
    move-exception v5

    move-object v8, v9

    .end local v9    # "event":Lc8/RQ;
    .restart local v8    # "event":Lc8/RQ;
    move-object v11, v12

    .end local v12    # "sdk":Lc8/TQ;
    .restart local v11    # "sdk":Lc8/TQ;
    goto :goto_9

    .end local v11    # "sdk":Lc8/TQ;
    .restart local v6    # "elementName":Ljava/lang/String;
    .restart local v12    # "sdk":Lc8/TQ;
    :catch_4
    move-exception v5

    move-object v11, v12

    .end local v12    # "sdk":Lc8/TQ;
    .restart local v11    # "sdk":Lc8/TQ;
    goto :goto_9

    .end local v6    # "elementName":Ljava/lang/String;
    .end local v8    # "event":Lc8/RQ;
    .end local v11    # "sdk":Lc8/TQ;
    .restart local v7    # "endElement":Ljava/lang/String;
    .restart local v9    # "event":Lc8/RQ;
    .restart local v12    # "sdk":Lc8/TQ;
    :cond_1e
    move-object v8, v9

    .end local v9    # "event":Lc8/RQ;
    .restart local v8    # "event":Lc8/RQ;
    move-object v11, v12

    .end local v12    # "sdk":Lc8/TQ;
    .restart local v11    # "sdk":Lc8/TQ;
    goto/16 :goto_2

    .end local v1    # "argument":Lc8/NQ;
    .end local v8    # "event":Lc8/RQ;
    .end local v11    # "sdk":Lc8/TQ;
    .restart local v2    # "argument":Lc8/NQ;
    .restart local v9    # "event":Lc8/RQ;
    .restart local v12    # "sdk":Lc8/TQ;
    :cond_1f
    move-object v1, v2

    .end local v2    # "argument":Lc8/NQ;
    .restart local v1    # "argument":Lc8/NQ;
    goto :goto_8

    .end local v1    # "argument":Lc8/NQ;
    .end local v3    # "company":Lc8/OQ;
    .restart local v2    # "argument":Lc8/NQ;
    .restart local v4    # "company":Lc8/OQ;
    :cond_20
    move-object v3, v4

    .end local v4    # "company":Lc8/OQ;
    .restart local v3    # "company":Lc8/OQ;
    goto :goto_7

    .end local v2    # "argument":Lc8/NQ;
    .end local v7    # "endElement":Ljava/lang/String;
    .end local v9    # "event":Lc8/RQ;
    .restart local v1    # "argument":Lc8/NQ;
    .restart local v6    # "elementName":Ljava/lang/String;
    .restart local v8    # "event":Lc8/RQ;
    :cond_21
    move-object v11, v12

    .end local v12    # "sdk":Lc8/TQ;
    .restart local v11    # "sdk":Lc8/TQ;
    goto/16 :goto_2

    .end local v8    # "event":Lc8/RQ;
    .end local v11    # "sdk":Lc8/TQ;
    .restart local v9    # "event":Lc8/RQ;
    .restart local v12    # "sdk":Lc8/TQ;
    :cond_22
    move-object v8, v9

    .end local v9    # "event":Lc8/RQ;
    .restart local v8    # "event":Lc8/RQ;
    goto/16 :goto_5

    .end local v1    # "argument":Lc8/NQ;
    .end local v8    # "event":Lc8/RQ;
    .restart local v2    # "argument":Lc8/NQ;
    .restart local v9    # "event":Lc8/RQ;
    :cond_23
    move-object v1, v2

    .end local v2    # "argument":Lc8/NQ;
    .restart local v1    # "argument":Lc8/NQ;
    goto/16 :goto_4

    .end local v1    # "argument":Lc8/NQ;
    .restart local v2    # "argument":Lc8/NQ;
    :cond_24
    move-object v8, v9

    .end local v9    # "event":Lc8/RQ;
    .restart local v8    # "event":Lc8/RQ;
    move-object v1, v2

    .end local v2    # "argument":Lc8/NQ;
    .restart local v1    # "argument":Lc8/NQ;
    goto/16 :goto_6

    .end local v1    # "argument":Lc8/NQ;
    .end local v8    # "event":Lc8/RQ;
    .restart local v2    # "argument":Lc8/NQ;
    .restart local v9    # "event":Lc8/RQ;
    :cond_25
    move-object v8, v9

    .end local v9    # "event":Lc8/RQ;
    .restart local v8    # "event":Lc8/RQ;
    move-object v1, v2

    .end local v2    # "argument":Lc8/NQ;
    .restart local v1    # "argument":Lc8/NQ;
    move-object v11, v12

    .end local v12    # "sdk":Lc8/TQ;
    .restart local v11    # "sdk":Lc8/TQ;
    goto/16 :goto_2

    .end local v1    # "argument":Lc8/NQ;
    .end local v3    # "company":Lc8/OQ;
    .end local v8    # "event":Lc8/RQ;
    .end local v11    # "sdk":Lc8/TQ;
    .restart local v2    # "argument":Lc8/NQ;
    .restart local v4    # "company":Lc8/OQ;
    .restart local v9    # "event":Lc8/RQ;
    .restart local v12    # "sdk":Lc8/TQ;
    :cond_26
    move-object v3, v4

    .end local v4    # "company":Lc8/OQ;
    .restart local v3    # "company":Lc8/OQ;
    goto/16 :goto_3

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
