.class public Lc8/PWe;
.super Ljava/lang/Object;
.source "PersistentConfiguration.java"


# static fields
.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "t"

.field private static final KEY_TIMESTAMP2:Ljava/lang/String; = "t2"


# instance fields
.field private mCanRead:Z

.field private mCanWrite:Z

.field private mConfigName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFolderName:Ljava/lang/String;

.field private mIsLessMode:Z

.field private mIsSafety:Z

.field private mMyEditor:Lc8/MWe;

.field private mMySP:Lc8/OWe;

.field private mSp:Landroid/content/SharedPreferences;

.field private mTxf:Lc8/SWe;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "configName"    # Ljava/lang/String;
    .param p4, "isSafety"    # Z
    .param p5, "isLessMode"    # Z

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mConfigName:Ljava/lang/String;

    .line 21
    const-string/jumbo v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mFolderName:Ljava/lang/String;

    .line 22
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lc8/PWe;->mIsSafety:Z

    .line 23
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lc8/PWe;->mCanRead:Z

    .line 24
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lc8/PWe;->mCanWrite:Z

    .line 25
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    .line 26
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    .line 27
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 28
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    .line 29
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mContext:Landroid/content/Context;

    .line 30
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mTxf:Lc8/SWe;

    .line 31
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lc8/PWe;->mIsLessMode:Z

    .line 39
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/PWe;->mIsSafety:Z

    .line 40
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/PWe;->mIsLessMode:Z

    .line 41
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/PWe;->mConfigName:Ljava/lang/String;

    .line 42
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/PWe;->mFolderName:Ljava/lang/String;

    .line 43
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/PWe;->mContext:Landroid/content/Context;

    .line 44
    const-wide/16 v8, 0x0

    .line 45
    .local v8, "spT":J
    const-wide/16 v6, 0x0

    .line 46
    .local v6, "mySPT":J
    if-eqz p1, :cond_0

    .line 47
    const/4 v12, 0x0

    .line 48
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    .line 49
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v13, "t"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 51
    :cond_0
    const/4 v4, 0x0

    .line 53
    .local v4, "mountedProperty":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 57
    :goto_0
    invoke-static {v4}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 58
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lc8/PWe;->mCanWrite:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lc8/PWe;->mCanRead:Z

    .line 70
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lc8/PWe;->mCanRead:Z

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lc8/PWe;->mCanWrite:Z

    if-eqz v12, :cond_2

    .line 71
    :cond_1
    if-eqz p1, :cond_2

    .line 72
    invoke-static/range {p2 .. p2}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 73
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lc8/PWe;->getTransactionXMLFile(Ljava/lang/String;)Lc8/SWe;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mTxf:Lc8/SWe;

    .line 74
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mTxf:Lc8/SWe;

    if-eqz v12, :cond_2

    .line 76
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mTxf:Lc8/SWe;

    const/4 v13, 0x0

    .line 77
    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lc8/SWe;->getMySharedPreferences(Ljava/lang/String;I)Lc8/OWe;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    .line 79
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    const-string/jumbo v13, "t"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Lc8/OWe;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 80
    if-nez p5, :cond_c

    .line 81
    cmp-long v12, v8, v6

    if-lez v12, :cond_a

    .line 83
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lc8/PWe;->copySPToMySP(Landroid/content/SharedPreferences;Lc8/OWe;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mTxf:Lc8/SWe;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lc8/SWe;->getMySharedPreferences(Ljava/lang/String;I)Lc8/OWe;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mMySP:Lc8/OWe;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    :cond_2
    :goto_2
    cmp-long v12, v8, v6

    if-nez v12, :cond_3

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-nez v12, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_6

    .line 136
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 137
    .local v10, "timestamp":J
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lc8/PWe;->mIsLessMode:Z

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lc8/PWe;->mIsLessMode:Z

    if-eqz v12, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-nez v12, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_6

    .line 139
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    if-eqz v12, :cond_5

    .line 140
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 141
    .local v3, "editorTmp":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v12, "t2"

    invoke-interface {v3, v12, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    .end local v3    # "editorTmp":Landroid/content/SharedPreferences$Editor;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    if-eqz v12, :cond_6

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    invoke-interface {v12}, Lc8/OWe;->edit()Lc8/MWe;

    move-result-object v5

    .line 147
    .local v5, "myEditorTmp":Lc8/MWe;
    const-string/jumbo v12, "t2"

    invoke-interface {v5, v12, v10, v11}, Lc8/MWe;->putLong(Ljava/lang/String;J)Lc8/MWe;

    .line 148
    invoke-interface {v5}, Lc8/MWe;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 155
    .end local v5    # "myEditorTmp":Lc8/MWe;
    .end local v10    # "timestamp":J
    :cond_6
    :goto_3
    return-void

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 60
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    const-string/jumbo v12, "mounted"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 61
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lc8/PWe;->mCanWrite:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lc8/PWe;->mCanRead:Z

    goto/16 :goto_1

    .line 62
    :cond_8
    const-string/jumbo v12, "mounted_ro"

    .line 63
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 64
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lc8/PWe;->mCanRead:Z

    .line 65
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lc8/PWe;->mCanWrite:Z

    goto/16 :goto_1

    .line 67
    :cond_9
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lc8/PWe;->mCanWrite:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lc8/PWe;->mCanRead:Z

    goto/16 :goto_1

    .line 87
    :cond_a
    cmp-long v12, v8, v6

    if-gez v12, :cond_b

    .line 89
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lc8/PWe;->copyMySPToSP(Lc8/OWe;Landroid/content/SharedPreferences;)V

    .line 90
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    goto/16 :goto_2

    :catch_1
    move-exception v12

    goto/16 :goto_2

    .line 92
    :cond_b
    cmp-long v12, v8, v6

    if-nez v12, :cond_2

    .line 93
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lc8/PWe;->copySPToMySP(Landroid/content/SharedPreferences;Lc8/OWe;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mTxf:Lc8/SWe;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lc8/SWe;->getMySharedPreferences(Ljava/lang/String;I)Lc8/OWe;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    goto/16 :goto_2

    .line 99
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v13, "t2"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 100
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    const-string/jumbo v13, "t2"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Lc8/OWe;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 101
    cmp-long v12, v8, v6

    if-gez v12, :cond_d

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_d

    .line 103
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lc8/PWe;->copySPToMySP(Landroid/content/SharedPreferences;Lc8/OWe;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mTxf:Lc8/SWe;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lc8/SWe;->getMySharedPreferences(Ljava/lang/String;I)Lc8/OWe;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    goto/16 :goto_2

    .line 107
    :cond_d
    cmp-long v12, v8, v6

    if-lez v12, :cond_e

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_e

    .line 109
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lc8/PWe;->copyMySPToSP(Lc8/OWe;Landroid/content/SharedPreferences;)V

    .line 110
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    goto/16 :goto_2

    .line 112
    :cond_e
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-nez v12, :cond_f

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_f

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lc8/PWe;->copyMySPToSP(Lc8/OWe;Landroid/content/SharedPreferences;)V

    .line 114
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    goto/16 :goto_2

    .line 116
    :cond_f
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_10

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_10

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lc8/PWe;->copySPToMySP(Landroid/content/SharedPreferences;Lc8/OWe;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mTxf:Lc8/SWe;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lc8/SWe;->getMySharedPreferences(Ljava/lang/String;I)Lc8/OWe;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    goto/16 :goto_2

    .line 121
    :cond_10
    cmp-long v12, v8, v6

    if-nez v12, :cond_2

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/PWe;->mMySP:Lc8/OWe;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lc8/PWe;->copySPToMySP(Landroid/content/SharedPreferences;Lc8/OWe;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PWe;->mTxf:Lc8/SWe;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lc8/SWe;->getMySharedPreferences(Ljava/lang/String;I)Lc8/OWe;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/PWe;->mMySP:Lc8/OWe;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .restart local v10    # "timestamp":J
    :catch_2
    move-exception v12

    goto/16 :goto_3
.end method

.method private checkSDCardXMLFile()Z
    .locals 2

    .prologue
    .line 236
    iget-object v1, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    invoke-interface {v1}, Lc8/OWe;->checkFile()Z

    move-result v0

    .line 238
    .local v0, "isExist":Z
    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lc8/PWe;->commit()Z

    .line 243
    .end local v0    # "isExist":Z
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyMySPToSP(Lc8/OWe;Landroid/content/SharedPreferences;)V
    .locals 8
    .param p1, "sp1"    # Lc8/OWe;
    .param p2, "sp2"    # Landroid/content/SharedPreferences;

    .prologue
    .line 208
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 209
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 210
    .local v1, "editorTmp":Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_6

    .line 211
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {p1}, Lc8/OWe;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 213
    .local v2, "itorator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 214
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 216
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 217
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 218
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 219
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 220
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 221
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 222
    check-cast v4, Ljava/lang/Long;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 223
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 224
    check-cast v4, Ljava/lang/Float;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 225
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 226
    check-cast v4, Ljava/lang/Boolean;

    .line 227
    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 226
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 230
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    .end local v1    # "editorTmp":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "itorator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_6
    return-void
.end method

.method private copySPToMySP(Landroid/content/SharedPreferences;Lc8/OWe;)V
    .locals 8
    .param p1, "sp1"    # Landroid/content/SharedPreferences;
    .param p2, "sp2"    # Lc8/OWe;

    .prologue
    .line 180
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 181
    invoke-interface {p2}, Lc8/OWe;->edit()Lc8/MWe;

    move-result-object v3

    .line 182
    .local v3, "myEditorTmp":Lc8/MWe;
    if-eqz v3, :cond_6

    .line 183
    invoke-interface {v3}, Lc8/MWe;->clear()Lc8/MWe;

    .line 184
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 185
    .local v1, "itorator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 189
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 190
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-interface {v3, v2, v4}, Lc8/MWe;->putString(Ljava/lang/String;Ljava/lang/String;)Lc8/MWe;

    goto :goto_0

    .line 191
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 192
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v2, v5}, Lc8/MWe;->putInt(Ljava/lang/String;I)Lc8/MWe;

    goto :goto_0

    .line 193
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 194
    check-cast v4, Ljava/lang/Long;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v2, v6, v7}, Lc8/MWe;->putLong(Ljava/lang/String;J)Lc8/MWe;

    goto :goto_0

    .line 195
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 196
    check-cast v4, Ljava/lang/Float;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v3, v2, v5}, Lc8/MWe;->putFloat(Ljava/lang/String;F)Lc8/MWe;

    goto :goto_0

    .line 197
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 198
    check-cast v4, Ljava/lang/Boolean;

    .line 199
    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 198
    invoke-interface {v3, v2, v5}, Lc8/MWe;->putBoolean(Ljava/lang/String;Z)Lc8/MWe;

    goto :goto_0

    .line 202
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_5
    invoke-interface {v3}, Lc8/MWe;->commit()Z

    .line 205
    .end local v1    # "itorator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "myEditorTmp":Lc8/MWe;
    :cond_6
    return-void
.end method

.method private getRootFolder(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 168
    .local v1, "sdCardFile":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 169
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "%s%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 169
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "rootFolder":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 176
    .end local v0    # "rootFolder":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTransactionXMLFile(Ljava/lang/String;)Lc8/SWe;
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lc8/PWe;->getRootFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 159
    .local v0, "rootFolder":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 160
    new-instance v1, Lc8/SWe;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/SWe;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lc8/PWe;->mTxf:Lc8/SWe;

    .line 161
    iget-object v1, p0, Lc8/PWe;->mTxf:Lc8/SWe;

    .line 163
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initEditor()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 250
    :cond_0
    iget-boolean v0, p0, Lc8/PWe;->mCanWrite:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    invoke-interface {v0}, Lc8/OWe;->edit()Lc8/MWe;

    move-result-object v0

    iput-object v0, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    .line 253
    :cond_1
    invoke-direct {p0}, Lc8/PWe;->checkSDCardXMLFile()Z

    .line 254
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 359
    invoke-direct {p0}, Lc8/PWe;->initEditor()V

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 361
    .local v0, "t":J
    iget-object v2, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 363
    iget-object v2, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "t"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 365
    :cond_0
    iget-object v2, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    if-eqz v2, :cond_1

    .line 366
    iget-object v2, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    invoke-interface {v2}, Lc8/MWe;->clear()Lc8/MWe;

    .line 367
    iget-object v2, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    const-string/jumbo v3, "t"

    invoke-interface {v2, v3, v0, v1}, Lc8/MWe;->putLong(Ljava/lang/String;J)Lc8/MWe;

    .line 369
    :cond_1
    return-void
.end method

.method public commit()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 372
    const/4 v2, 0x1

    .line 373
    .local v2, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 374
    .local v4, "t":J
    iget-object v6, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v6, :cond_1

    .line 375
    iget-boolean v6, p0, Lc8/PWe;->mIsLessMode:Z

    if-nez v6, :cond_0

    .line 376
    iget-object v6, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_0

    .line 377
    iget-object v6, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v7, "t"

    invoke-interface {v6, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 380
    :cond_0
    iget-object v6, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    if-nez v6, :cond_1

    .line 381
    const/4 v2, 0x0

    .line 384
    :cond_1
    iget-object v6, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_2

    .line 385
    iget-object v6, p0, Lc8/PWe;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    .line 386
    iget-object v6, p0, Lc8/PWe;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lc8/PWe;->mConfigName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    .line 390
    :cond_2
    const/4 v1, 0x0

    .line 392
    .local v1, "mountedProperty":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 396
    :goto_0
    invoke-static {v1}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 397
    const-string/jumbo v6, "mounted"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 398
    iget-object v6, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    if-nez v6, :cond_7

    .line 399
    iget-object v6, p0, Lc8/PWe;->mFolderName:Ljava/lang/String;

    .line 400
    invoke-direct {p0, v6}, Lc8/PWe;->getTransactionXMLFile(Ljava/lang/String;)Lc8/SWe;

    move-result-object v3

    .line 401
    .local v3, "txf":Lc8/SWe;
    if-eqz v3, :cond_3

    .line 402
    iget-object v6, p0, Lc8/PWe;->mConfigName:Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Lc8/SWe;->getMySharedPreferences(Ljava/lang/String;I)Lc8/OWe;

    move-result-object v6

    iput-object v6, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    .line 404
    iget-boolean v6, p0, Lc8/PWe;->mIsLessMode:Z

    if-nez v6, :cond_6

    .line 405
    iget-object v6, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    invoke-direct {p0, v6, v7}, Lc8/PWe;->copySPToMySP(Landroid/content/SharedPreferences;Lc8/OWe;)V

    .line 409
    :goto_1
    iget-object v6, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    invoke-interface {v6}, Lc8/OWe;->edit()Lc8/MWe;

    move-result-object v6

    iput-object v6, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    .line 419
    .end local v3    # "txf":Lc8/SWe;
    :cond_3
    :goto_2
    const-string/jumbo v6, "mounted"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "mounted_ro"

    .line 421
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    if-eqz v6, :cond_5

    .line 424
    :cond_4
    :try_start_1
    iget-object v6, p0, Lc8/PWe;->mTxf:Lc8/SWe;

    if-eqz v6, :cond_5

    .line 425
    iget-object v6, p0, Lc8/PWe;->mTxf:Lc8/SWe;

    iget-object v7, p0, Lc8/PWe;->mConfigName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lc8/SWe;->getMySharedPreferences(Ljava/lang/String;I)Lc8/OWe;

    move-result-object v6

    iput-object v6, p0, Lc8/PWe;->mMySP:Lc8/OWe;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 433
    :cond_5
    :goto_3
    return v2

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 407
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "txf":Lc8/SWe;
    :cond_6
    iget-object v6, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    iget-object v7, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v6, v7}, Lc8/PWe;->copyMySPToSP(Lc8/OWe;Landroid/content/SharedPreferences;)V

    goto :goto_1

    .line 412
    .end local v3    # "txf":Lc8/SWe;
    :cond_7
    iget-object v6, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    if-eqz v6, :cond_3

    .line 413
    iget-object v6, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    invoke-interface {v6}, Lc8/MWe;->commit()Z

    move-result v6

    if-nez v6, :cond_3

    .line 414
    const/4 v2, 0x0

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_3
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 491
    invoke-direct {p0}, Lc8/PWe;->checkSDCardXMLFile()Z

    .line 492
    iget-object v0, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 497
    :goto_0
    return-object v0

    .line 494
    :cond_0
    iget-object v0, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    invoke-interface {v0}, Lc8/OWe;->getAll()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 497
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 481
    invoke-direct {p0}, Lc8/PWe;->checkSDCardXMLFile()Z

    .line 482
    iget-object v1, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 487
    :cond_0
    :goto_0
    return v0

    .line 484
    :cond_1
    iget-object v1, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    invoke-interface {v1, p1, v0}, Lc8/OWe;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 471
    invoke-direct {p0}, Lc8/PWe;->checkSDCardXMLFile()Z

    .line 472
    iget-object v1, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 477
    :cond_0
    :goto_0
    return v0

    .line 474
    :cond_1
    iget-object v1, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    invoke-interface {v1, p1, v0}, Lc8/OWe;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 451
    invoke-direct {p0}, Lc8/PWe;->checkSDCardXMLFile()Z

    .line 452
    iget-object v1, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 453
    iget-object v1, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 457
    :cond_0
    :goto_0
    return v0

    .line 454
    :cond_1
    iget-object v1, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    invoke-interface {v1, p1, v0}, Lc8/OWe;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 461
    invoke-direct {p0}, Lc8/PWe;->checkSDCardXMLFile()Z

    .line 462
    iget-object v2, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    .line 463
    iget-object v2, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 467
    :cond_0
    :goto_0
    return-wide v0

    .line 464
    :cond_1
    iget-object v2, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    if-eqz v2, :cond_0

    .line 465
    iget-object v2, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    invoke-interface {v2, p1, v0, v1}, Lc8/OWe;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 437
    invoke-direct {p0}, Lc8/PWe;->checkSDCardXMLFile()Z

    .line 438
    iget-object v1, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 444
    :cond_0
    iget-object v1, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    const-string/jumbo v2, ""

    invoke-interface {v1, p1, v2}, Lc8/OWe;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 447
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 281
    invoke-static {p1}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    invoke-direct {p0}, Lc8/PWe;->initEditor()V

    .line 283
    iget-object v0, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    :cond_0
    iget-object v0, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    invoke-interface {v0, p1, p2}, Lc8/MWe;->putBoolean(Ljava/lang/String;Z)Lc8/MWe;

    .line 290
    :cond_1
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 293
    invoke-static {p1}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    invoke-direct {p0}, Lc8/PWe;->initEditor()V

    .line 295
    iget-object v0, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 298
    :cond_0
    iget-object v0, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    invoke-interface {v0, p1, p2}, Lc8/MWe;->putFloat(Ljava/lang/String;F)Lc8/MWe;

    .line 302
    :cond_1
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 257
    invoke-static {p1}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    invoke-direct {p0}, Lc8/PWe;->initEditor()V

    .line 259
    iget-object v0, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 262
    :cond_0
    iget-object v0, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    invoke-interface {v0, p1, p2}, Lc8/MWe;->putInt(Ljava/lang/String;I)Lc8/MWe;

    .line 266
    :cond_1
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 269
    invoke-static {p1}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    invoke-direct {p0}, Lc8/PWe;->initEditor()V

    .line 271
    iget-object v0, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 274
    :cond_0
    iget-object v0, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    invoke-interface {v0, p1, p2, p3}, Lc8/MWe;->putLong(Ljava/lang/String;J)Lc8/MWe;

    .line 278
    :cond_1
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-static {p1}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    invoke-direct {p0}, Lc8/PWe;->initEditor()V

    .line 307
    iget-object v0, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    :cond_0
    iget-object v0, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    invoke-interface {v0, p1, p2}, Lc8/MWe;->putString(Ljava/lang/String;Ljava/lang/String;)Lc8/MWe;

    .line 314
    :cond_1
    return-void
.end method

.method public reload()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 329
    iget-object v2, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 330
    iget-object v2, p0, Lc8/PWe;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lc8/PWe;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lc8/PWe;->mConfigName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lc8/PWe;->mSp:Landroid/content/SharedPreferences;

    .line 335
    :cond_0
    const/4 v1, 0x0

    .line 337
    .local v1, "mountedProperty":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 341
    :goto_0
    invoke-static {v1}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 342
    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "mounted_ro"

    .line 344
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc8/PWe;->mMySP:Lc8/OWe;

    if-eqz v2, :cond_2

    .line 347
    :cond_1
    :try_start_1
    iget-object v2, p0, Lc8/PWe;->mTxf:Lc8/SWe;

    if-eqz v2, :cond_2

    .line 348
    iget-object v2, p0, Lc8/PWe;->mTxf:Lc8/SWe;

    iget-object v3, p0, Lc8/PWe;->mConfigName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lc8/SWe;->getMySharedPreferences(Ljava/lang/String;I)Lc8/OWe;

    move-result-object v2

    iput-object v2, p0, Lc8/PWe;->mMySP:Lc8/OWe;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 356
    :cond_2
    :goto_1
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-static {p1}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    invoke-direct {p0}, Lc8/PWe;->initEditor()V

    .line 319
    iget-object v0, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lc8/PWe;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 322
    :cond_0
    iget-object v0, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lc8/PWe;->mMyEditor:Lc8/MWe;

    invoke-interface {v0, p1}, Lc8/MWe;->remove(Ljava/lang/String;)Lc8/MWe;

    .line 326
    :cond_1
    return-void
.end method
