.class public Lc8/dpf;
.super Ljava/lang/Object;
.source "AlibcClipboardUtils.java"


# static fields
.field private static final ALIBC_CLIPBOARD_DATA:Ljava/lang/String; = "Data"

.field private static final ALIBC_CLIPBOARD_KEY:Ljava/lang/String; = "com.alibc.clip.AlibcClipboard"

.field private static final ALIBC_CLIPBOARD_TIME:Ljava/lang/String; = "Time"

.field private static mAlibcClipboardUtils:Lc8/dpf;

.field private static mClipboard:Landroid/content/ClipboardManager;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string/jumbo v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    sput-object v0, Lc8/dpf;->mClipboard:Landroid/content/ClipboardManager;

    goto :goto_0
.end method

.method public static declared-synchronized getClipboardUtils(Landroid/app/Application;)Lc8/dpf;
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 37
    const-class v1, Lc8/dpf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/dpf;->mAlibcClipboardUtils:Lc8/dpf;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lc8/dpf;

    invoke-direct {v0, p0}, Lc8/dpf;-><init>(Landroid/app/Application;)V

    sput-object v0, Lc8/dpf;->mAlibcClipboardUtils:Lc8/dpf;

    .line 41
    :cond_0
    sget-object v0, Lc8/dpf;->mAlibcClipboardUtils:Lc8/dpf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private jsonObjParse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 210
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-object v1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Alibc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "jsonObjParse jsonString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private putJsonObj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 202
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Alibc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "putJsonObj key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private replaceClipData()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lc8/dpf;->clipTest()V

    .line 198
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 9

    .prologue
    .line 111
    sget-object v7, Lc8/dpf;->mClipboard:Landroid/content/ClipboardManager;

    if-nez v7, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    sget-object v7, Lc8/dpf;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v7}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v6

    .line 116
    .local v6, "myClip":Landroid/content/ClipData;
    const/4 v2, 0x0

    .line 120
    .local v2, "copyClip":Landroid/content/ClipData;
    if-eqz v6, :cond_0

    .line 121
    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 122
    .local v0, "clipSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 123
    invoke-virtual {v6, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    .line 124
    .local v5, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "clipText":Ljava/lang/String;
    const-string/jumbo v7, "com.alibc.clip.AlibcClipboard"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 127
    .local v4, "isALibcClip":Z
    if-nez v4, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 128
    if-nez v2, :cond_3

    .line 129
    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 122
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 131
    :cond_3
    invoke-virtual {v2, v5}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_2

    .line 140
    .end local v1    # "clipText":Ljava/lang/String;
    .end local v4    # "isALibcClip":Z
    .end local v5    # "item":Landroid/content/ClipData$Item;
    :cond_4
    if-nez v2, :cond_5

    .line 141
    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 144
    :cond_5
    sget-object v7, Lc8/dpf;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v7, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0
.end method

.method public clearTest()V
    .locals 3

    .prologue
    .line 192
    sget-object v0, Lc8/dpf;->mClipboard:Landroid/content/ClipboardManager;

    const-string/jumbo v1, "Group"

    const-string/jumbo v2, "aaaa"

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 193
    return-void
.end method

.method public clipTest()V
    .locals 3

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "clipTest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/dpf;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    sget-object v0, Lc8/dpf;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->toString()Ljava/lang/String;

    .line 189
    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string/jumbo v9, ""

    .line 157
    .local v9, "value":Ljava/lang/String;
    sget-object v11, Lc8/dpf;->mClipboard:Landroid/content/ClipboardManager;

    if-nez v11, :cond_0

    move-object v10, v9

    .line 183
    .end local v9    # "value":Ljava/lang/String;
    .local v10, "value":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 161
    .end local v10    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_0
    sget-object v11, Lc8/dpf;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v11}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v8

    .line 163
    .local v8, "myClip":Landroid/content/ClipData;
    const/4 v1, 0x0

    .line 164
    .local v1, "clipItem":Landroid/content/ClipData$Item;
    const/4 v6, 0x0

    .line 166
    .local v6, "isALibcClip":Z
    if-eqz v8, :cond_1

    .line 167
    invoke-virtual {v8}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    .line 168
    .local v2, "clipSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 169
    invoke-virtual {v8, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "clipText":Ljava/lang/String;
    const-string/jumbo v11, "com.alibc.clip.AlibcClipboard"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 172
    if-nez v6, :cond_1

    .line 168
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 176
    .end local v2    # "clipSize":I
    .end local v3    # "clipText":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "alibcClipString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lc8/dpf;->jsonObjParse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 179
    .local v7, "jo":Lorg/json/JSONObject;
    const-string/jumbo v11, "Data"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 180
    .local v4, "dataObject":Lorg/json/JSONObject;
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .end local v0    # "alibcClipString":Ljava/lang/String;
    .end local v4    # "dataObject":Lorg/json/JSONObject;
    .end local v7    # "jo":Lorg/json/JSONObject;
    :cond_2
    move-object v10, v9

    .line 183
    .end local v9    # "value":Ljava/lang/String;
    .restart local v10    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v16, Lc8/dpf;->mClipboard:Landroid/content/ClipboardManager;

    if-nez v16, :cond_0

    .line 53
    const/16 v16, 0x0

    .line 106
    :goto_0
    return v16

    .line 56
    :cond_0
    sget-object v16, Lc8/dpf;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual/range {v16 .. v16}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v15

    .line 57
    .local v15, "myClip":Landroid/content/ClipData;
    const/4 v8, 0x0

    .line 59
    .local v8, "copyClip":Landroid/content/ClipData;
    const/4 v5, 0x0

    .line 62
    .local v5, "clipItem":Landroid/content/ClipData$Item;
    if-eqz v15, :cond_4

    .line 63
    invoke-virtual {v15}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    .line 64
    .local v6, "clipSize":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_4

    .line 65
    invoke-virtual {v15, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v12

    .line 66
    .local v12, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v12}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, "clipText":Ljava/lang/String;
    const-string/jumbo v16, "com.alibc.clip.AlibcClipboard"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 69
    .local v11, "isALibcClip":Z
    if-nez v11, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 70
    if-nez v8, :cond_3

    .line 71
    const/16 v16, 0x0

    invoke-virtual {v12}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v8

    .line 77
    :cond_1
    :goto_2
    if-eqz v11, :cond_2

    move-object v5, v12

    .line 64
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {v8, v12}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_2

    .line 81
    .end local v6    # "clipSize":I
    .end local v7    # "clipText":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "isALibcClip":Z
    .end local v12    # "item":Landroid/content/ClipData$Item;
    :cond_4
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .local v14, "jsonObject":Lorg/json/JSONObject;
    if-nez v5, :cond_5

    .line 86
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 93
    .local v9, "dataObject":Lorg/json/JSONObject;
    :goto_3
    const-string/jumbo v16, "com.alibc.clip.AlibcClipboard"

    const-string/jumbo v17, "true"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lc8/dpf;->putJsonObj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string/jumbo v16, "Time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lc8/dpf;->putJsonObj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v9, v1, v2}, Lc8/dpf;->putJsonObj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string/jumbo v16, "Data"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1, v9}, Lc8/dpf;->putJsonObj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    if-nez v8, :cond_6

    .line 98
    const-string/jumbo v16, ""

    const-string/jumbo v17, ""

    invoke-static/range {v16 .. v17}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v8

    .line 99
    new-instance v16, Landroid/content/ClipData$Item;

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 104
    :goto_4
    sget-object v16, Lc8/dpf;->mClipboard:Landroid/content/ClipboardManager;

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 106
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 88
    .end local v9    # "dataObject":Lorg/json/JSONObject;
    :cond_5
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "alibcClipString":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lc8/dpf;->jsonObjParse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 90
    .local v13, "jo":Lorg/json/JSONObject;
    const-string/jumbo v16, "Data"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .restart local v9    # "dataObject":Lorg/json/JSONObject;
    goto :goto_3

    .line 101
    .end local v4    # "alibcClipString":Ljava/lang/String;
    .end local v13    # "jo":Lorg/json/JSONObject;
    :cond_6
    new-instance v16, Landroid/content/ClipData$Item;

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_4
.end method
