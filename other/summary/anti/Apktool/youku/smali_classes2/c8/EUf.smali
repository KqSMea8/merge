.class public Lc8/EUf;
.super Ljava/lang/Object;
.source "PatchInfo.java"


# instance fields
.field public extData:I

.field public hasUpdate:Z

.field public isImmediatelyLoad:Z

.field public mainVersion:Ljava/lang/String;

.field public md5:Ljava/lang/String;

.field public patchUrl:Ljava/lang/String;

.field public pri:I

.field public size:J

.field public type:Ljava/lang/String;

.field public useSupport:Z

.field public version:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "hasUpdate"    # Z

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lc8/EUf;->useSupport:Z

    .line 54
    iput v0, p0, Lc8/EUf;->extData:I

    .line 67
    iput-boolean p1, p0, Lc8/EUf;->hasUpdate:Z

    .line 68
    return-void
.end method

.method public static create(Lcom/alibaba/fastjson/JSONObject;)Lc8/EUf;
    .locals 18
    .param p0, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 71
    const/4 v11, 0x0

    .line 74
    .local v11, "result":Lc8/EUf;
    :try_start_0
    const-string/jumbo v17, "patches"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 75
    const-string/jumbo v17, "patches"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    .line 76
    .local v8, "patches":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v17

    if-lez v17, :cond_1

    .line 77
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/JSONObject;

    .line 78
    .local v5, "patchInfo":Lcom/alibaba/fastjson/JSONObject;
    new-instance v12, Lc8/EUf;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v12, v0}, Lc8/EUf;-><init>(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    .end local v11    # "result":Lc8/EUf;
    .local v12, "result":Lc8/EUf;
    const/16 v17, 0x1

    :try_start_1
    move/from16 v0, v17

    iput-boolean v0, v12, Lc8/EUf;->useSupport:Z

    .line 80
    const-string/jumbo v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 81
    .local v13, "type":Ljava/lang/String;
    const-string/jumbo v17, "md5"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "md5":Ljava/lang/String;
    const-string/jumbo v17, "patchUrl"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "patchUrl":Ljava/lang/String;
    const-string/jumbo v17, "pri"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 84
    .local v9, "priority":I
    const-string/jumbo v17, "size"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 85
    .local v14, "size":J
    const-string/jumbo v17, "mainVersion"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "appVersion":Ljava/lang/String;
    const-string/jumbo v17, "version"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 87
    .local v7, "patchVersion":I
    const-string/jumbo v17, "useSupport"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 88
    .local v16, "useSupport":Z
    const-string/jumbo v17, "extData"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 89
    const-string/jumbo v17, "extData"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    iput v0, v12, Lc8/EUf;->extData:I

    .line 92
    :cond_0
    iget v0, v12, Lc8/EUf;->extData:I

    move/from16 v17, v0

    and-int/lit8 v10, v17, 0x1

    .line 93
    .local v10, "res":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_2

    .line 94
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v12, Lc8/EUf;->isImmediatelyLoad:Z

    .line 99
    :goto_0
    iput-object v13, v12, Lc8/EUf;->type:Ljava/lang/String;

    .line 100
    iput-object v4, v12, Lc8/EUf;->md5:Ljava/lang/String;

    .line 101
    iput-object v6, v12, Lc8/EUf;->patchUrl:Ljava/lang/String;

    .line 102
    iput v9, v12, Lc8/EUf;->pri:I

    .line 103
    iput-wide v14, v12, Lc8/EUf;->size:J

    .line 104
    iput-object v2, v12, Lc8/EUf;->mainVersion:Ljava/lang/String;

    .line 105
    iput v7, v12, Lc8/EUf;->version:I

    .line 106
    move/from16 v0, v16

    iput-boolean v0, v12, Lc8/EUf;->useSupport:Z

    .end local v2    # "appVersion":Ljava/lang/String;
    .end local v4    # "md5":Ljava/lang/String;
    .end local v5    # "patchInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "patchUrl":Ljava/lang/String;
    .end local v7    # "patchVersion":I
    .end local v8    # "patches":Lcom/alibaba/fastjson/JSONArray;
    .end local v9    # "priority":I
    .end local v10    # "res":I
    .end local v13    # "type":Ljava/lang/String;
    .end local v14    # "size":J
    .end local v16    # "useSupport":Z
    :goto_1
    move-object v11, v12

    .line 117
    .end local v12    # "result":Lc8/EUf;
    .restart local v11    # "result":Lc8/EUf;
    :cond_1
    :goto_2
    return-object v11

    .line 96
    .end local v11    # "result":Lc8/EUf;
    .restart local v2    # "appVersion":Ljava/lang/String;
    .restart local v4    # "md5":Ljava/lang/String;
    .restart local v5    # "patchInfo":Lcom/alibaba/fastjson/JSONObject;
    .restart local v6    # "patchUrl":Ljava/lang/String;
    .restart local v7    # "patchVersion":I
    .restart local v8    # "patches":Lcom/alibaba/fastjson/JSONArray;
    .restart local v9    # "priority":I
    .restart local v10    # "res":I
    .restart local v12    # "result":Lc8/EUf;
    .restart local v13    # "type":Ljava/lang/String;
    .restart local v14    # "size":J
    .restart local v16    # "useSupport":Z
    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v12, Lc8/EUf;->isImmediatelyLoad:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 113
    .end local v2    # "appVersion":Ljava/lang/String;
    .end local v4    # "md5":Ljava/lang/String;
    .end local v5    # "patchInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "patchUrl":Ljava/lang/String;
    .end local v7    # "patchVersion":I
    .end local v8    # "patches":Lcom/alibaba/fastjson/JSONArray;
    .end local v9    # "priority":I
    .end local v10    # "res":I
    .end local v13    # "type":Ljava/lang/String;
    .end local v14    # "size":J
    .end local v16    # "useSupport":Z
    :catch_0
    move-exception v3

    move-object v11, v12

    .line 114
    .end local v12    # "result":Lc8/EUf;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v11    # "result":Lc8/EUf;
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 109
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    const-string/jumbo v17, "rollback"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 110
    new-instance v12, Lc8/EUf;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v12, v0}, Lc8/EUf;-><init>(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 111
    .end local v11    # "result":Lc8/EUf;
    .restart local v12    # "result":Lc8/EUf;
    const/16 v17, 0x0

    :try_start_3
    move/from16 v0, v17

    iput-boolean v0, v12, Lc8/EUf;->useSupport:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 113
    .end local v12    # "result":Lc8/EUf;
    .restart local v11    # "result":Lc8/EUf;
    :catch_1
    move-exception v3

    goto :goto_3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Patch\u7684\u7248\u672c\u4e3a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget v1, p0, Lc8/EUf;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v1, " ---  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo v1, "Patch\u7684MD5\u503c\u4e3a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lc8/EUf;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v1, " ---  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v1, "Patch\u7684size\u4e3a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-wide v2, p0, Lc8/EUf;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v1, " ---  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v1, "Patch\u7684\u5b58\u50a8\u8def\u5f84\u4e3a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v1, p0, Lc8/EUf;->patchUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v1, " ---  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v1, "Patch\u4f18\u5148\u7ea7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget v1, p0, Lc8/EUf;->pri:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
