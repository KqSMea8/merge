.class public abstract Lc8/RWp;
.super Landroid/app/IntentService;
.source "BaseIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseIntentService"

.field private static final msgStatus:Ljava/lang/String; = "4"


# instance fields
.field private agooFactory:Lc8/QWp;

.field private mContext:Landroid/content/Context;

.field private messageService:Lc8/dXp;

.field private notifyManager:Lc8/UWp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "AgooIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/RWp;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private final getTrace(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trace"    # J

    .prologue
    .line 363
    const/4 v1, 0x0

    .local v1, "operators":Ljava/lang/String;
    const/4 v0, 0x0

    .line 372
    .local v0, "netType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    const-string/jumbo v1, "unknow"

    .line 375
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    const-string/jumbo v0, "unknow"

    .line 378
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 379
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "appkey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 382
    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 384
    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private final handleRemoteMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 206
    :try_start_0
    const-string/jumbo v4, "id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 207
    .local v24, "messageId":Ljava/lang/String;
    const-string/jumbo v4, "body"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 208
    .local v23, "message":Ljava/lang/String;
    const-string/jumbo v4, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 209
    .local v30, "type":Ljava/lang/String;
    const-string/jumbo v4, "message_source"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 210
    .local v28, "source":Ljava/lang/String;
    const-string/jumbo v4, "report"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 211
    .local v27, "report":Ljava/lang/String;
    const-string/jumbo v4, "encrypted"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 212
    .local v17, "encrypted":Ljava/lang/String;
    const-string/jumbo v4, "extData"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 213
    .local v18, "extData":Ljava/lang/String;
    const-string/jumbo v4, "oriData"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .line 214
    .local v15, "data":Ljava/lang/String;
    const/16 v19, 0x0

    .line 216
    .local v19, "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    const/16 v21, 0x0

    .line 217
    .local v21, "fromPkg":Ljava/lang/String;
    const/16 v20, 0x0

    .line 219
    .local v20, "fromAppkey":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v4, "trace"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 220
    .local v11, "_trace":Ljava/lang/Long;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lc8/RWp;->getTrace(Landroid/content/Context;J)Ljava/lang/String;

    .line 221
    const-string/jumbo v4, "msg_agoo_bundle"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 222
    .local v13, "bundle":Landroid/os/Bundle;
    if-eqz v13, :cond_0

    .line 223
    const-string/jumbo v4, "accs_extra"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    move-object/from16 v19, v0

    .line 225
    :cond_0
    const-string/jumbo v4, "source"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 226
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v21, "oldsdk"

    .line 227
    :cond_1
    const-string/jumbo v4, "fromAppkey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v20

    .line 231
    .end local v11    # "_trace":Ljava/lang/Long;
    .end local v13    # "bundle":Landroid/os/Bundle;
    :goto_0
    :try_start_2
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 232
    const-string/jumbo v4, "BaseIntentService"

    const-string/jumbo v5, "handleRemoteMessage"

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "message"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v23, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "source"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v28, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "msgId"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object v24, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "utdid"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string/jumbo v8, "fromPkg"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    aput-object v21, v6, v7

    const/16 v7, 0xa

    const-string/jumbo v8, "fromAppkey"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    aput-object v20, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :cond_2
    new-instance v25, Lc8/DWp;

    invoke-direct/range {v25 .. v25}, Lc8/DWp;-><init>()V

    .line 236
    .local v25, "msg":Lc8/DWp;
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    iput-object v0, v1, Lc8/DWp;->msgIds:Ljava/lang/String;

    .line 237
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    iput-object v0, v1, Lc8/DWp;->extData:Ljava/lang/String;

    .line 238
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    iput-object v0, v1, Lc8/DWp;->messageSource:Ljava/lang/String;

    .line 239
    const-string/jumbo v4, "4"

    move-object/from16 v0, v25

    iput-object v4, v0, Lc8/DWp;->msgStatus:Ljava/lang/String;

    .line 240
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    iput-object v0, v1, Lc8/DWp;->reportStr:Ljava/lang/String;

    .line 241
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    iput-object v0, v1, Lc8/DWp;->fromPkg:Ljava/lang/String;

    .line 242
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    iput-object v0, v1, Lc8/DWp;->fromAppkey:Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->isFirstStartProc()Z

    move-result v4

    move-object/from16 v0, v25

    iput-boolean v4, v0, Lc8/DWp;->isStartProc:Z

    .line 244
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RWp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->isNotificationEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    iput-object v4, v0, Lc8/DWp;->notifyEnable:Ljava/lang/String;

    .line 246
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 247
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 248
    const-string/jumbo v4, "BaseIntentService"

    const-string/jumbo v5, "message is encrypted, attemp to decrypt msg"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    invoke-static/range {v23 .. v23}, Lc8/QWp;->parseEncryptedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 250
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 251
    const-string/jumbo v4, "22"

    move-object/from16 v0, v25

    iput-object v4, v0, Lc8/DWp;->errorCode:Ljava/lang/String;

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RWp;->notifyManager:Lc8/UWp;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lc8/UWp;->handlerACKMessage(Lc8/DWp;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    .line 352
    .end local v15    # "data":Ljava/lang/String;
    .end local v17    # "encrypted":Ljava/lang/String;
    .end local v18    # "extData":Ljava/lang/String;
    .end local v19    # "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    .end local v20    # "fromAppkey":Ljava/lang/String;
    .end local v21    # "fromPkg":Ljava/lang/String;
    .end local v23    # "message":Ljava/lang/String;
    .end local v24    # "messageId":Ljava/lang/String;
    .end local v25    # "msg":Lc8/DWp;
    .end local v27    # "report":Ljava/lang/String;
    .end local v28    # "source":Ljava/lang/String;
    .end local v30    # "type":Ljava/lang/String;
    :goto_1
    return-void

    .line 228
    .restart local v15    # "data":Ljava/lang/String;
    .restart local v17    # "encrypted":Ljava/lang/String;
    .restart local v18    # "extData":Ljava/lang/String;
    .restart local v19    # "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    .restart local v20    # "fromAppkey":Ljava/lang/String;
    .restart local v21    # "fromPkg":Ljava/lang/String;
    .restart local v23    # "message":Ljava/lang/String;
    .restart local v24    # "messageId":Ljava/lang/String;
    .restart local v27    # "report":Ljava/lang/String;
    .restart local v28    # "source":Ljava/lang/String;
    .restart local v30    # "type":Ljava/lang/String;
    :catch_0
    move-exception v29

    .line 229
    .local v29, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "BaseIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_trace,t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 348
    .end local v15    # "data":Ljava/lang/String;
    .end local v17    # "encrypted":Ljava/lang/String;
    .end local v18    # "extData":Ljava/lang/String;
    .end local v19    # "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    .end local v20    # "fromAppkey":Ljava/lang/String;
    .end local v21    # "fromPkg":Ljava/lang/String;
    .end local v23    # "message":Ljava/lang/String;
    .end local v24    # "messageId":Ljava/lang/String;
    .end local v27    # "report":Ljava/lang/String;
    .end local v28    # "source":Ljava/lang/String;
    .end local v29    # "t":Ljava/lang/Throwable;
    .end local v30    # "type":Ljava/lang/String;
    :catch_1
    move-exception v29

    .line 349
    .restart local v29    # "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "accs"

    const-string/jumbo v5, "agoo_arrive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "arrive_exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-static {v4, v5, v6, v8, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_1

    .line 256
    .end local v29    # "t":Ljava/lang/Throwable;
    .restart local v15    # "data":Ljava/lang/String;
    .restart local v17    # "encrypted":Ljava/lang/String;
    .restart local v18    # "extData":Ljava/lang/String;
    .restart local v19    # "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    .restart local v20    # "fromAppkey":Ljava/lang/String;
    .restart local v21    # "fromPkg":Ljava/lang/String;
    .restart local v23    # "message":Ljava/lang/String;
    .restart local v24    # "messageId":Ljava/lang/String;
    .restart local v25    # "msg":Lc8/DWp;
    .restart local v27    # "report":Ljava/lang/String;
    .restart local v28    # "source":Ljava/lang/String;
    .restart local v30    # "type":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string/jumbo v4, "BaseIntentService"

    const-string/jumbo v5, "msg encrypted flag not exist~~"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 258
    :try_start_4
    const-string/jumbo v4, "24"

    move-object/from16 v0, v25

    iput-object v4, v0, Lc8/DWp;->errorCode:Ljava/lang/String;

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RWp;->notifyManager:Lc8/UWp;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lc8/UWp;->report(Lc8/DWp;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_1

    .line 267
    :cond_4
    :try_start_5
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result v4

    if-eqz v4, :cond_5

    .line 269
    :try_start_6
    const-string/jumbo v4, "21"

    move-object/from16 v0, v25

    iput-object v4, v0, Lc8/DWp;->errorCode:Ljava/lang/String;

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RWp;->notifyManager:Lc8/UWp;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lc8/UWp;->report(Lc8/DWp;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    .line 275
    :goto_2
    :try_start_7
    const-string/jumbo v4, "BaseIntentService"

    const-string/jumbo v5, "handleMessage--->[null]"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 278
    :cond_5
    const-string/jumbo v4, "body"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 283
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RWp;->notifyManager:Lc8/UWp;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lc8/UWp;->report(Lc8/DWp;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RWp;->messageService:Lc8/dXp;

    const-string/jumbo v5, "0"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0, v15, v5}, Lc8/dXp;->addAccsMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v4

    const/16 v5, 0x4e1f

    const-string/jumbo v6, "Page_Push"

    const-string/jumbo v7, "agoo_arrive_id"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/16 v31, 0x0

    const/16 v32, 0x0

    aput-object v32, v10, v31

    const/16 v31, 0x1

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "messageId="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v25

    iget-object v0, v0, Lc8/DWp;->msgIds:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v10, v31

    invoke-virtual/range {v4 .. v10}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 287
    const-string/jumbo v4, "accs"

    const-string/jumbo v5, "agoo_arrive"

    const-string/jumbo v6, "arrive"

    const-wide/16 v8, 0x0

    invoke-static {v4, v5, v6, v8, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 292
    :goto_3
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RWp;->messageService:Lc8/dXp;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lc8/dXp;->hasMessageDuplicate(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 293
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 294
    const-string/jumbo v4, "BaseIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleRemoteMessage hasMessageDuplicate,messageId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",utdid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    :cond_6
    const-string/jumbo v4, "accs"

    const-string/jumbo v5, "agoo_arrive"

    const-string/jumbo v6, "arrive_dup"

    const-wide/16 v8, 0x0

    invoke-static {v4, v5, v6, v8, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_1

    .line 288
    :catch_3
    move-exception v29

    .line 289
    .restart local v29    # "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "BaseIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "report message Throwable--->t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 299
    .end local v29    # "t":Ljava/lang/Throwable;
    :cond_7
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 300
    const-string/jumbo v4, "BaseIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleMessage--->["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "],["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    .line 304
    :cond_8
    :try_start_a
    const-string/jumbo v4, "duplicate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 306
    .local v16, "duplicate":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "1"

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 308
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v12

    .line 309
    .local v12, "bodyHashCode":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RWp;->messageService:Lc8/dXp;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0, v12}, Lc8/dXp;->hasMessageDuplicate(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 311
    const-string/jumbo v4, "accs"

    const-string/jumbo v5, "agoo_arrive"

    const-string/jumbo v6, "arrive_dupbody"

    const-wide/16 v8, 0x0

    invoke-static {v4, v5, v6, v8, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_1

    .line 315
    .end local v12    # "bodyHashCode":I
    .end local v16    # "duplicate":Ljava/lang/String;
    :catch_4
    move-exception v29

    .line 316
    .restart local v29    # "t":Ljava/lang/Throwable;
    :try_start_b
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 317
    const-string/jumbo v4, "BaseIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hasMessageDuplicate message,e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    .line 320
    .end local v29    # "t":Ljava/lang/Throwable;
    :cond_9
    const/16 v26, -0x1

    .line 322
    .local v26, "notify":I
    :try_start_c
    const-string/jumbo v4, "notify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    move-result v26

    .line 327
    :goto_4
    :try_start_d
    const-string/jumbo v14, ""
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    .line 329
    .local v14, "className":Ljava/lang/String;
    :try_start_e
    const-string/jumbo v4, "has_test"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 331
    .local v22, "hasTest":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string/jumbo v4, "1"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 332
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RWp;->messageService:Lc8/dXp;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    move/from16 v3, v26

    invoke-virtual {v4, v0, v1, v2, v3}, Lc8/dXp;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 334
    const-string/jumbo v4, "accs"

    const-string/jumbo v5, "agoo_arrive"

    const-string/jumbo v6, "arrive_test"

    const-wide/16 v8, 0x0

    invoke-static {v4, v5, v6, v8, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_1

    .end local v22    # "hasTest":Ljava/lang/String;
    :catch_5
    move-exception v4

    .line 342
    :goto_5
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RWp;->messageService:Lc8/dXp;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    move/from16 v3, v26

    invoke-virtual {v4, v0, v1, v2, v3}, Lc8/dXp;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 345
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v4

    const/16 v5, 0x4e1f

    const-string/jumbo v6, "Page_Push"

    const-string/jumbo v7, "agoo_arrive_real_id"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/16 v31, 0x0

    const/16 v32, 0x0

    aput-object v32, v10, v31

    const/16 v31, 0x1

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "messageId="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v25

    iget-object v0, v0, Lc8/DWp;->msgIds:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v10, v31

    invoke-virtual/range {v4 .. v10}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 346
    const-string/jumbo v4, "accs"

    const-string/jumbo v5, "agoo_arrive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "arrive_real_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-static {v4, v5, v6, v8, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 347
    invoke-virtual/range {p0 .. p2}, Lc8/RWp;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_1

    .line 337
    .restart local v22    # "hasTest":Ljava/lang/String;
    :cond_a
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    move-result-object v14

    goto :goto_5

    .end local v14    # "className":Ljava/lang/String;
    .end local v22    # "hasTest":Ljava/lang/String;
    :catch_6
    move-exception v4

    goto/16 :goto_4

    .end local v26    # "notify":I
    :catch_7
    move-exception v4

    goto/16 :goto_2
.end method

.method private final handleRemovePackage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 173
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const/4 v1, 0x0

    .line 177
    .local v1, "uninstallPack":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 178
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    const-string/jumbo v3, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 188
    .local v0, "replacing":Z
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 189
    const-string/jumbo v3, "BaseIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleRemovePackage---->[replacing:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "],uninstallPack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :cond_3
    if-nez v0, :cond_0

    .line 193
    iget-object v3, p0, Lc8/RWp;->notifyManager:Lc8/UWp;

    invoke-virtual {v3, v1, v0}, Lc8/UWp;->doUninstall(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static final runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 394
    :try_start_0
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v1, "BaseIntentService"

    const-string/jumbo v2, "runIntentInService"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 398
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    throw v1
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 61
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 62
    new-instance v0, Lc8/UWp;

    invoke-direct {v0}, Lc8/UWp;-><init>()V

    iput-object v0, p0, Lc8/RWp;->notifyManager:Lc8/UWp;

    .line 63
    iget-object v0, p0, Lc8/RWp;->notifyManager:Lc8/UWp;

    invoke-virtual {p0}, Lc8/RWp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/UWp;->init(Landroid/content/Context;)V

    .line 64
    new-instance v0, Lc8/dXp;

    invoke-direct {v0}, Lc8/dXp;-><init>()V

    iput-object v0, p0, Lc8/RWp;->messageService:Lc8/dXp;

    .line 65
    iget-object v0, p0, Lc8/RWp;->messageService:Lc8/dXp;

    invoke-virtual {p0}, Lc8/RWp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/dXp;->init(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lc8/QWp;

    invoke-direct {v0}, Lc8/QWp;-><init>()V

    iput-object v0, p0, Lc8/RWp;->agooFactory:Lc8/QWp;

    .line 67
    iget-object v0, p0, Lc8/RWp;->agooFactory:Lc8/QWp;

    invoke-virtual {p0}, Lc8/RWp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/RWp;->notifyManager:Lc8/UWp;

    iget-object v3, p0, Lc8/RWp;->messageService:Lc8/dXp;

    invoke-virtual {v0, v1, v2, v3}, Lc8/QWp;->init(Landroid/content/Context;Lc8/UWp;Lc8/dXp;)V

    .line 68
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 69
    return-void
.end method

.method protected abstract onError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 73
    invoke-virtual {p0}, Lc8/RWp;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lc8/RWp;->mContext:Landroid/content/Context;

    .line 74
    if-nez p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 81
    iget-object v9, p0, Lc8/RWp;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lc8/YWp;->getAgooCommand(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "agooCommand":Ljava/lang/String;
    iget-object v9, p0, Lc8/RWp;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lc8/YWp;->getThirdPushCommand(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "thirdPushCommand":Ljava/lang/String;
    const-string/jumbo v9, "BaseIntentService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onHandleIntent,action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",agooCommand="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",mipushCommand="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :try_start_0
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 86
    const-string/jumbo v9, "command"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "actionCommand":Ljava/lang/String;
    const-string/jumbo v9, "BaseIntentService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "actionCommand --->["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    const-string/jumbo v9, "message_readed"

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "message_deleted"

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 94
    :cond_2
    iget-object v9, p0, Lc8/RWp;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9, p1}, Lc8/RWp;->onUserCommand(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v1    # "actionCommand":Ljava/lang/String;
    :cond_3
    :goto_1
    sget-object v9, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/16 :goto_0

    .line 96
    :cond_4
    :try_start_1
    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 97
    const-string/jumbo v9, "command"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .restart local v1    # "actionCommand":Ljava/lang/String;
    const-string/jumbo v9, "thirdPushId"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "regId":Ljava/lang/String;
    const-string/jumbo v9, "mipushId_report"

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 102
    iget-object v9, p0, Lc8/RWp;->notifyManager:Lc8/UWp;

    const-string/jumbo v10, "MI_TOKEN"

    const/4 v11, 0x0

    invoke-virtual {v9, v6, v10, v11}, Lc8/UWp;->reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 154
    .end local v1    # "actionCommand":Ljava/lang/String;
    .end local v6    # "regId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 155
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_2
    sget-object v9, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v9}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 156
    const-string/jumbo v9, "BaseIntentService"

    const-string/jumbo v10, "onHandleIntent deal error"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v3, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    :cond_5
    sget-object v9, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/16 :goto_0

    .line 103
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v1    # "actionCommand":Ljava/lang/String;
    .restart local v6    # "regId":Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string/jumbo v9, "huaweipushId_report"

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 105
    const-string/jumbo v9, "BaseIntentService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "HW_TOKEN report begin..regid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v9, p0, Lc8/RWp;->notifyManager:Lc8/UWp;

    const-string/jumbo v10, "HW_TOKEN"

    const/4 v11, 0x0

    invoke-virtual {v9, v6, v10, v11}, Lc8/UWp;->reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 159
    .end local v1    # "actionCommand":Ljava/lang/String;
    .end local v6    # "regId":Ljava/lang/String;
    :catchall_0
    move-exception v9

    sget-object v10, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    throw v9

    .line 107
    .restart local v1    # "actionCommand":Ljava/lang/String;
    .restart local v6    # "regId":Ljava/lang/String;
    :cond_7
    :try_start_4
    const-string/jumbo v9, "gcmpushId_report"

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 109
    const-string/jumbo v9, "BaseIntentService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "GCM_TOKEN report begin..regid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v9, p0, Lc8/RWp;->notifyManager:Lc8/UWp;

    const-string/jumbo v10, "gcm"

    const/4 v11, 0x0

    invoke-virtual {v9, v6, v10, v11}, Lc8/UWp;->reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 113
    .end local v1    # "actionCommand":Ljava/lang/String;
    .end local v6    # "regId":Ljava/lang/String;
    :cond_8
    const-string/jumbo v9, "org.agoo.android.intent.action.RECEIVE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 115
    iget-object v9, p0, Lc8/RWp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9, p1}, Lc8/RWp;->handleRemoteMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 116
    :cond_9
    const-string/jumbo v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 117
    iget-object v9, p0, Lc8/RWp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9, p1}, Lc8/RWp;->handleRemovePackage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 118
    :cond_a
    const-string/jumbo v9, "org.agoo.android.intent.action.REPORT"

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "android.intent.action.PACKAGE_REPLACED"

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "android.intent.action.USER_PRESENT"

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v9

    if-eqz v9, :cond_3

    .line 128
    :cond_b
    :try_start_5
    const-string/jumbo v9, "BaseIntentService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "is report cache msg,Config.isReportCacheMsg(mContext)="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lc8/RWp;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lc8/BWp;->isReportCacheMsg(Landroid/content/Context;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v9, p0, Lc8/RWp;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lc8/BWp;->isReportCacheMsg(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 131
    iget-object v9, p0, Lc8/RWp;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 133
    iget-object v9, p0, Lc8/RWp;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lc8/BWp;->clearReportTimes(Landroid/content/Context;)V

    .line 135
    iget-object v9, p0, Lc8/RWp;->agooFactory:Lc8/QWp;

    invoke-virtual {v9}, Lc8/QWp;->reportCacheMsg()V

    .line 136
    iget-object v9, p0, Lc8/RWp;->messageService:Lc8/dXp;

    invoke-virtual {v9}, Lc8/dXp;->deleteCacheMessage()V

    .line 139
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 140
    .local v4, "now":J
    sget-object v9, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v9}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 141
    const-string/jumbo v9, "BaseIntentService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "is clear all msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lc8/RWp;->mContext:Landroid/content/Context;

    invoke-static {v11, v4, v5}, Lc8/BWp;->isClearTime(Landroid/content/Context;J)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_d
    iget-object v9, p0, Lc8/RWp;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v5}, Lc8/BWp;->isClearTime(Landroid/content/Context;J)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 145
    iget-object v9, p0, Lc8/RWp;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v5}, Lc8/BWp;->setClearTimes(Landroid/content/Context;J)V

    .line 147
    iget-object v9, p0, Lc8/RWp;->messageService:Lc8/dXp;

    invoke-virtual {v9}, Lc8/dXp;->deleteCacheMessage()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 150
    .end local v4    # "now":J
    :catch_1
    move-exception v7

    .line 151
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_6
    const-string/jumbo v9, "BaseIntentService"

    const-string/jumbo v10, "reportCacheMsg"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v7, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method protected abstract onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract onRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected onUserCommand(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    return-void
.end method
