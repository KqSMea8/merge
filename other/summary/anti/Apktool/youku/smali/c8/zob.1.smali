.class public Lc8/zob;
.super Ljava/lang/Object;
.source "AlibcClipboardUtils.java"


# static fields
.field private static final ALIBC_CLIPBOARD_DATA:Ljava/lang/String; = "Data"

.field private static final ALIBC_CLIPBOARD_KEY:Ljava/lang/String; = "com.alibc.clip.AlibcClipboard"

.field private static final ALIBC_CLIPBOARD_TIME:Ljava/lang/String; = "Time"

.field private static mAlibcClipboardUtils:Lc8/zob;

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

    .line 41
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string/jumbo v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    sput-object v0, Lc8/zob;->mClipboard:Landroid/content/ClipboardManager;

    goto :goto_0
.end method

.method public static declared-synchronized getClipboardUtils(Landroid/app/Application;)Lc8/zob;
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 45
    const-class v1, Lc8/zob;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/zob;->mAlibcClipboardUtils:Lc8/zob;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lc8/zob;

    invoke-direct {v0, p0}, Lc8/zob;-><init>(Landroid/app/Application;)V

    sput-object v0, Lc8/zob;->mAlibcClipboardUtils:Lc8/zob;

    .line 49
    :cond_0
    sget-object v0, Lc8/zob;->mAlibcClipboardUtils:Lc8/zob;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private jsonObjParse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 164
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-object v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
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

    .line 169
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private putJsonObj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
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


# virtual methods
.method public getData(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string/jumbo v9, ""

    .line 125
    .local v9, "value":Ljava/lang/String;
    sget-object v11, Lc8/zob;->mClipboard:Landroid/content/ClipboardManager;

    if-nez v11, :cond_0

    move-object v10, v9

    .line 151
    .end local v9    # "value":Ljava/lang/String;
    .local v10, "value":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 129
    .end local v10    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_0
    sget-object v11, Lc8/zob;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v11}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v8

    .line 131
    .local v8, "myClip":Landroid/content/ClipData;
    const/4 v1, 0x0

    .line 132
    .local v1, "clipItem":Landroid/content/ClipData$Item;
    const/4 v6, 0x0

    .line 134
    .local v6, "isALibcClip":Z
    if-eqz v8, :cond_1

    .line 135
    invoke-virtual {v8}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    .line 136
    .local v2, "clipSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 137
    invoke-virtual {v8, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "clipText":Ljava/lang/String;
    const-string/jumbo v11, "com.alibc.clip.AlibcClipboard"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 140
    if-nez v6, :cond_1

    .line 136
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 144
    .end local v2    # "clipSize":I
    .end local v3    # "clipText":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "alibcClipString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lc8/zob;->jsonObjParse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 147
    .local v7, "jo":Lorg/json/JSONObject;
    const-string/jumbo v11, "Data"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 148
    .local v4, "dataObject":Lorg/json/JSONObject;
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .end local v0    # "alibcClipString":Ljava/lang/String;
    .end local v4    # "dataObject":Lorg/json/JSONObject;
    .end local v7    # "jo":Lorg/json/JSONObject;
    :cond_2
    move-object v10, v9

    .line 151
    .end local v9    # "value":Ljava/lang/String;
    .restart local v10    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v16, Lc8/zob;->mClipboard:Landroid/content/ClipboardManager;

    if-nez v16, :cond_0

    .line 61
    const/16 v16, 0x0

    .line 113
    :goto_0
    return v16

    .line 64
    :cond_0
    sget-object v16, Lc8/zob;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual/range {v16 .. v16}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v15

    .line 65
    .local v15, "myClip":Landroid/content/ClipData;
    const/4 v8, 0x0

    .line 67
    .local v8, "copyClip":Landroid/content/ClipData;
    const/4 v5, 0x0

    .line 70
    .local v5, "clipItem":Landroid/content/ClipData$Item;
    if-eqz v15, :cond_4

    .line 71
    invoke-virtual {v15}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    .line 72
    .local v6, "clipSize":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_4

    .line 73
    invoke-virtual {v15, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v12

    .line 74
    .local v12, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v12}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "clipText":Ljava/lang/String;
    const-string/jumbo v16, "com.alibc.clip.AlibcClipboard"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 77
    .local v11, "isALibcClip":Z
    if-nez v11, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 78
    if-nez v8, :cond_3

    .line 79
    const/16 v16, 0x0

    invoke-virtual {v12}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v8

    .line 85
    :cond_1
    :goto_2
    if-eqz v11, :cond_2

    move-object v5, v12

    .line 72
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v8, v12}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_2

    .line 89
    .end local v6    # "clipSize":I
    .end local v7    # "clipText":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "isALibcClip":Z
    .end local v12    # "item":Landroid/content/ClipData$Item;
    :cond_4
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 93
    .local v14, "jsonObject":Lorg/json/JSONObject;
    if-nez v5, :cond_5

    .line 94
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 101
    .local v9, "dataObject":Lorg/json/JSONObject;
    :goto_3
    const-string/jumbo v16, "com.alibc.clip.AlibcClipboard"

    const-string/jumbo v17, "true"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lc8/zob;->putJsonObj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string/jumbo v16, "Time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lc8/zob;->putJsonObj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v9, v1, v2}, Lc8/zob;->putJsonObj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string/jumbo v16, "Data"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1, v9}, Lc8/zob;->putJsonObj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    if-nez v8, :cond_6

    .line 106
    const-string/jumbo v16, ""

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v8

    .line 111
    :goto_4
    sget-object v16, Lc8/zob;->mClipboard:Landroid/content/ClipboardManager;

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 113
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 96
    .end local v9    # "dataObject":Lorg/json/JSONObject;
    :cond_5
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "alibcClipString":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lc8/zob;->jsonObjParse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 98
    .local v13, "jo":Lorg/json/JSONObject;
    const-string/jumbo v16, "Data"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .restart local v9    # "dataObject":Lorg/json/JSONObject;
    goto :goto_3

    .line 108
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
