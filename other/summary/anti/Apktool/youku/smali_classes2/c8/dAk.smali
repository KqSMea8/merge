.class public Lc8/dAk;
.super Ljava/lang/Object;
.source "SubscribeManager.java"


# static fields
.field public static final ACTION_ADD_SUBSCRIBE:Ljava/lang/String; = "com.youku.action.ADD_SUBSCRIBE"

.field public static final ACTION_CANCEL_SUBSCRIBE:Ljava/lang/String; = "com.youku.action.CANCEL_SUBSCRIBE"

.field public static final EXTRA_SUBSCRIBE_SID:Ljava/lang/String; = "sid"

.field public static final EXTRA_SUBSCRIBE_UID:Ljava/lang/String; = "uid"

.field public static final KEY_DID:Ljava/lang/String; = "did"

.field public static final KEY_SID:Ljava/lang/String; = "sid"

.field public static final KEY_UID:Ljava/lang/String; = "uid"

.field public static final MSG_ON_SUBSCRIBE:I = 0x232e

.field public static final MSG_SUBSCRIBE_DELETE:I = 0x232c

.field public static final MSG_SUBSCRIBE_DELETE_FAIL:I = 0x232d

.field public static final MSG_SUBSCRIBE_FAIL:I = 0x232b

.field public static final MSG_SUBSCRIBE_NOT_EXIST:I = 0x232f

.field public static final MSG_SUBSCRIBE_SUCCESS:I = 0x232a

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final SUBSCRIB_SUCCESS:Ljava/lang/String; = "SubscribSuccess"

.field public static final SUSCARD_ERROR_CODE_ENOUGH:I = -0x12c

.field public static final SUSCARD_ERROR_CODE_NOT:I = -0x131

.field public static final SUSCARD_ERROR_CODE_WAIT:I = -0x132

.field public static final TAG:Ljava/lang/String; = "SubscribeManager"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static latestSubscribeType:I

.field private static sInstance:Lc8/dAk;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, -0x1

    sput v0, Lc8/dAk;->latestSubscribeType:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/dAk;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lc8/dAk;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/dAk;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lc8/dAk;->sendSuccessBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/dAk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lc8/dAk;->sendSubscribeSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/dAk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lc8/dAk;->sendSubscribeFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lc8/dAk;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/dAk;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/dAk;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/dAk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lc8/dAk;->sendUnsubscribeSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/dAk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lc8/dAk;->sendUnsubscribeFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/dAk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lc8/dAk;->sendSubscribeNotExist(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/dAk;
    .locals 1
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 74
    sget-object v0, Lc8/dAk;->sInstance:Lc8/dAk;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lc8/dAk;

    invoke-direct {v0, p0}, Lc8/dAk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/dAk;->sInstance:Lc8/dAk;

    .line 78
    :cond_0
    sget-object v0, Lc8/dAk;->sInstance:Lc8/dAk;

    return-object v0
.end method

.method public static registerSubscribeReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p0, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1175
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1176
    .local v1, "i":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.youku.action.SUBSCRIBE_EXECUTE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1177
    const-string/jumbo v2, "com.youku.action.SUBSCRIBE_SUCCESS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1178
    const-string/jumbo v2, "com.youku.action.SUBSCRIBE_FAILED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1179
    const-string/jumbo v2, "com.youku.action.UNSUBSCRIBE_EXECUTE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1180
    const-string/jumbo v2, "com.youku.action.UNSUBSCRIBE_SUCCESS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1181
    const-string/jumbo v2, "com.youku.action.UNSUBSCRIBE_FAILED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1182
    sget-object v2, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    .end local v1    # "i":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendSubscribeExecute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    .line 1197
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.SUBSCRIBE_EXECUTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 1198
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1197
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1202
    :goto_0
    return-void

    .line 1199
    :catch_0
    move-exception v0

    .line 1200
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private sendSubscribeFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    .line 1215
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.SUBSCRIBE_FAILED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 1216
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1215
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    :goto_0
    return-void

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private sendSubscribeHasExist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    .line 1261
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.SUBSCRIBE_HAS_EXIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 1262
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1261
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    :goto_0
    return-void

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private sendSubscribeNotExist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    .line 1252
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.SUBSCRIBE_NOT_EXIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 1253
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1252
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    :goto_0
    return-void

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private sendSubscribeSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    .line 1206
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.SUBSCRIBE_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 1207
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1206
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    :goto_0
    return-void

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private sendSuccessBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Send a Broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1162
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "SubscribSuccess"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1163
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "SubscribSuccess"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    sget-object v2, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1165
    :catch_0
    move-exception v0

    .line 1166
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendUnsubscribeExecute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    .line 1224
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.UNSUBSCRIBE_EXECUTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 1225
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1224
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    :goto_0
    return-void

    .line 1226
    :catch_0
    move-exception v0

    .line 1227
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private sendUnsubscribeFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    .line 1243
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.UNSUBSCRIBE_FAILED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 1244
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1243
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    :goto_0
    return-void

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private sendUnsubscribeSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    .line 1233
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.UNSUBSCRIBE_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 1234
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1233
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    :goto_0
    return-void

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static unregisterSubscribeReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p0, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1192
    if-eqz p0, :cond_0

    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1193
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs create(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;[Ljava/lang/String;)V
    .locals 9
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "isShowTips"    # Z
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Lc8/jAk;

    iget-object v1, p0, Lc8/dAk;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/jAk;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lc8/jAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;[Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public varargs create(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;Z[Ljava/lang/String;)V
    .locals 9
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "isShowTips"    # Z
    .param p7, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Lc8/jAk;

    iget-object v1, p0, Lc8/dAk;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/jAk;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lc8/jAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;[Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public varargs create(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;[Ljava/lang/String;)V
    .locals 7
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Lc8/jAk;

    iget-object v1, p0, Lc8/dAk;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/jAk;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lc8/jAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;[Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public delete(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;)V
    .locals 6
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;

    .prologue
    .line 105
    new-instance v0, Lc8/jAk;

    iget-object v1, p0, Lc8/dAk;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/jAk;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/jAk;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;)V

    .line 106
    return-void
.end method

.method public delete(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;Z)V
    .locals 8
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "isShowTips"    # Z

    .prologue
    .line 152
    new-instance v0, Lc8/jAk;

    iget-object v1, p0, Lc8/dAk;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/jAk;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lc8/jAk;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;)V

    .line 153
    return-void
.end method

.method public delete(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;)V
    .locals 8
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "isShowTips"    # Z
    .param p7, "handler"    # Landroid/os/Handler;

    .prologue
    .line 138
    new-instance v0, Lc8/jAk;

    iget-object v1, p0, Lc8/dAk;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/jAk;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lc8/jAk;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;)V

    .line 139
    return-void
.end method

.method public isBeSubscribedOffline(Ljava/lang/String;)Z
    .locals 1
    .param p1, "friendId"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {}, Lc8/kzk;->getInstance()Lc8/kzk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/kzk;->isBeSubscribedOffline(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;Z)V
    .locals 9
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "fromDetailPage"    # Z

    .prologue
    .line 734
    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v8}, Lc8/dAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;ZZ[Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;Z)V
    .locals 10
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "isShowTips"    # Z
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "fromDetailPage"    # Z

    .prologue
    .line 778
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lc8/dAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;Z[Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method public varargs requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;Z[Ljava/lang/String;)V
    .locals 20
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "isShowTips"    # Z
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "fromDetailPage"    # Z
    .param p9, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 430
    invoke-static {}, Lc8/nzk;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/dAk;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/phone/R$string;->tip_no_network:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/nzk;->showTips(Ljava/lang/String;)V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p3, :cond_0

    .line 438
    :cond_2
    const/16 v19, 0x0

    .line 439
    .local v19, "userUrl":Ljava/lang/String;
    if-eqz p9, :cond_3

    move-object/from16 v0, p9

    array-length v3, v0

    if-lez v3, :cond_3

    const/4 v3, 0x0

    aget-object v3, p9, v3

    if-eqz v3, :cond_3

    .line 440
    const/4 v3, 0x0

    aget-object v19, p9, v3

    .line 442
    :cond_3
    move-object/from16 v7, v19

    .line 443
    .local v7, "finalUserUrl":Ljava/lang/String;
    if-eqz p7, :cond_4

    .line 444
    const/16 v3, 0x232e

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 446
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lc8/dAk;->sendSubscribeExecute(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 448
    invoke-static/range {p1 .. p4}, Lc8/eAk;->getCreateRelationUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 449
    .local v18, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    new-instance v11, Lc8/RIj;

    invoke-direct {v11}, Lc8/RIj;-><init>()V

    new-instance v12, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "POST"

    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v4

    move-object/from16 v0, v18

    invoke-direct {v12, v0, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lc8/Xzk;

    move-object/from16 v4, p0

    move/from16 v5, p6

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v10}, Lc8/Xzk;-><init>(Lc8/dAk;ZLc8/Tzk;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v3}, Lc8/RIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    goto :goto_0

    .line 563
    .end local v18    # "url":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lc8/kzk;->getInstance()Lc8/kzk;

    move-result-object v17

    .line 564
    .local v17, "mOfflineSubscribeManage":Lc8/kzk;
    invoke-static {}, Lc8/jzk;->getInstance()Lc8/jzk;

    move-result-object v10

    .line 565
    .local v10, "mOfflineSubscribe":Lc8/jzk;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mOfflineSubscribeManage.isOverMaxNumber() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lc8/kzk;->isOverMaxNumber()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; fromDetailPage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    new-instance v8, Lc8/Yzk;

    move-object/from16 v9, p0

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object v13, v7

    move-object/from16 v14, p7

    move-object/from16 v15, p1

    move-object/from16 v16, p4

    invoke-direct/range {v8 .. v16}, Lc8/Yzk;-><init>(Lc8/dAk;Lc8/jzk;Lc8/Tzk;ZLjava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v8

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    invoke-virtual/range {v10 .. v15}, Lc8/jzk;->createOfflineSubscribe(Lc8/hzk;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 689
    const-string/jumbo v3, "login_youku"

    sput-object v3, Lc8/tin;->WIRELESS_LOGIN_FROM_VALUE:Ljava/lang/String;

    .line 690
    const-string/jumbo v3, "scribe"

    sput-object v3, Lc8/tin;->WIRELESS_USER_OPERATE_VALUE:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public varargs requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;ZZ[Ljava/lang/String;)V
    .locals 10
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "isShowTips"    # Z
    .param p7, "fromDetailPage"    # Z
    .param p8, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 766
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lc8/dAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;Z[Ljava/lang/String;)V

    .line 767
    return-void
.end method

.method public varargs requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;Z[Ljava/lang/String;)V
    .locals 9
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "fromDetailPage"    # Z
    .param p7, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 724
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lc8/dAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;ZZ[Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method public requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;Z)V
    .locals 9
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;
    .param p6, "fromDetailPage"    # Z

    .prologue
    .line 729
    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v8}, Lc8/dAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;ZZ[Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;Z)V
    .locals 10
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;
    .param p6, "isShowTips"    # Z
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "fromDetailPage"    # Z

    .prologue
    .line 772
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lc8/dAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;Z[Ljava/lang/String;)V

    .line 773
    return-void
.end method

.method public varargs requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;Z[Ljava/lang/String;)V
    .locals 20
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;
    .param p6, "isShowTips"    # Z
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "fromDetailPage"    # Z
    .param p9, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {}, Lc8/nzk;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/dAk;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/phone/R$string;->tip_no_network:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/nzk;->showTips(Ljava/lang/String;)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p3, :cond_0

    .line 170
    :cond_2
    const/16 v19, 0x0

    .line 171
    .local v19, "userUrl":Ljava/lang/String;
    if-eqz p9, :cond_3

    move-object/from16 v0, p9

    array-length v3, v0

    if-lez v3, :cond_3

    const/4 v3, 0x0

    aget-object v3, p9, v3

    if-eqz v3, :cond_3

    .line 172
    const/4 v3, 0x0

    aget-object v19, p9, v3

    .line 174
    :cond_3
    move-object/from16 v7, v19

    .line 175
    .local v7, "finalUserUrl":Ljava/lang/String;
    if-eqz p7, :cond_4

    .line 176
    const/16 v3, 0x232e

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lc8/dAk;->sendSubscribeExecute(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 180
    invoke-static/range {p1 .. p4}, Lc8/eAk;->getCreateRelationUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 181
    .local v18, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    new-instance v11, Lc8/RIj;

    invoke-direct {v11}, Lc8/RIj;-><init>()V

    new-instance v12, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "POST"

    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v4

    move-object/from16 v0, v18

    invoke-direct {v12, v0, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lc8/Vzk;

    move-object/from16 v4, p0

    move/from16 v5, p6

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v10}, Lc8/Vzk;-><init>(Lc8/dAk;ZLc8/vin;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v3}, Lc8/RIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    goto :goto_0

    .line 295
    .end local v18    # "url":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lc8/kzk;->getInstance()Lc8/kzk;

    move-result-object v17

    .line 296
    .local v17, "mOfflineSubscribeManage":Lc8/kzk;
    invoke-static {}, Lc8/jzk;->getInstance()Lc8/jzk;

    move-result-object v10

    .line 297
    .local v10, "mOfflineSubscribe":Lc8/jzk;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mOfflineSubscribeManage.isOverMaxNumber() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lc8/kzk;->isOverMaxNumber()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; fromDetailPage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    new-instance v8, Lc8/Wzk;

    move-object/from16 v9, p0

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object v13, v7

    move-object/from16 v14, p7

    move-object/from16 v15, p1

    move-object/from16 v16, p4

    invoke-direct/range {v8 .. v16}, Lc8/Wzk;-><init>(Lc8/dAk;Lc8/jzk;Lc8/vin;ZLjava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v8

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    invoke-virtual/range {v10 .. v15}, Lc8/jzk;->createOfflineSubscribe(Lc8/hzk;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 421
    const-string/jumbo v3, "login_youku"

    sput-object v3, Lc8/tin;->WIRELESS_LOGIN_FROM_VALUE:Ljava/lang/String;

    .line 422
    const-string/jumbo v3, "scribe"

    sput-object v3, Lc8/tin;->WIRELESS_USER_OPERATE_VALUE:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public varargs requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;ZZ[Ljava/lang/String;)V
    .locals 10
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;
    .param p6, "isShowTips"    # Z
    .param p7, "fromDetailPage"    # Z
    .param p8, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 750
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lc8/dAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;Z[Ljava/lang/String;)V

    .line 751
    return-void
.end method

.method public varargs requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;Z[Ljava/lang/String;)V
    .locals 9
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;
    .param p6, "fromDetailPage"    # Z
    .param p7, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 708
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lc8/dAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;ZZ[Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method public requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;)V
    .locals 8
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;

    .prologue
    .line 805
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lc8/dAk;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;)V

    .line 806
    return-void
.end method

.method public requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;Z)V
    .locals 8
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "isShowTips"    # Z

    .prologue
    .line 1155
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lc8/dAk;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;)V

    .line 1157
    return-void
.end method

.method public requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;)V
    .locals 11
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "isShowTips"    # Z
    .param p7, "handler"    # Landroid/os/Handler;

    .prologue
    .line 980
    invoke-static {}, Lc8/nzk;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 981
    iget-object v1, p0, Lc8/dAk;->mContext:Landroid/content/Context;

    sget v2, Lcom/youku/phone/R$string;->tip_no_network:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/nzk;->showTips(Ljava/lang/String;)V

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_0

    .line 987
    :cond_2
    if-eqz p7, :cond_3

    .line 988
    const/16 v1, 0x232e

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 990
    :cond_3
    invoke-direct {p0, p1, p4}, Lc8/dAk;->sendUnsubscribeExecute(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 992
    invoke-static {p1, p2, p3, p4}, Lc8/eAk;->getDeleteRelationUrl(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 993
    .local v9, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 994
    new-instance v8, Lc8/RIj;

    invoke-direct {v8}, Lc8/RIj;-><init>()V

    new-instance v10, Lcom/youku/network/HttpIntent;

    const-string/jumbo v1, "POST"

    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v2

    invoke-direct {v10, v9, v1, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lc8/bAk;

    move-object v2, p0

    move/from16 v3, p6

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lc8/bAk;-><init>(Lc8/dAk;ZLc8/Tzk;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v10, v1}, Lc8/RIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    goto :goto_0

    .line 1046
    .end local v9    # "url":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lc8/jzk;->getInstance()Lc8/jzk;

    move-result-object v3

    .line 1047
    .local v3, "mOfflineSubscribe":Lc8/jzk;
    new-instance v1, Lc8/cAk;

    move-object v2, p0

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lc8/cAk;-><init>(Lc8/dAk;Lc8/jzk;Lc8/Tzk;ZLandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1, p1, p3, p4}, Lc8/jzk;->deleteOfflineSubscribe(Lc8/hzk;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/vin;)V
    .locals 8
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;

    .prologue
    .line 791
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lc8/dAk;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;)V

    .line 792
    return-void
.end method

.method public requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/vin;Z)V
    .locals 8
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;
    .param p6, "isShowTips"    # Z

    .prologue
    .line 1139
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lc8/dAk;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;)V

    .line 1141
    return-void
.end method

.method public requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;)V
    .locals 11
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;
    .param p6, "isShowTips"    # Z
    .param p7, "handler"    # Landroid/os/Handler;

    .prologue
    .line 821
    invoke-static {}, Lc8/nzk;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 822
    iget-object v1, p0, Lc8/dAk;->mContext:Landroid/content/Context;

    sget v2, Lcom/youku/phone/R$string;->tip_no_network:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/nzk;->showTips(Ljava/lang/String;)V

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_0

    .line 828
    :cond_2
    if-eqz p7, :cond_3

    .line 829
    const/16 v1, 0x232e

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 831
    :cond_3
    invoke-direct {p0, p1, p4}, Lc8/dAk;->sendUnsubscribeExecute(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 833
    invoke-static {p1, p2, p3, p4}, Lc8/eAk;->getDeleteRelationUrl(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 834
    .local v9, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 835
    new-instance v8, Lc8/RIj;

    invoke-direct {v8}, Lc8/RIj;-><init>()V

    new-instance v10, Lcom/youku/network/HttpIntent;

    const-string/jumbo v1, "POST"

    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v2

    invoke-direct {v10, v9, v1, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lc8/Zzk;

    move-object v2, p0

    move/from16 v3, p6

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lc8/Zzk;-><init>(Lc8/dAk;ZLc8/vin;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v10, v1}, Lc8/RIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    goto :goto_0

    .line 887
    .end local v9    # "url":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lc8/jzk;->getInstance()Lc8/jzk;

    move-result-object v3

    .line 888
    .local v3, "mOfflineSubscribe":Lc8/jzk;
    new-instance v1, Lc8/aAk;

    move-object v2, p0

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lc8/aAk;-><init>(Lc8/dAk;Lc8/jzk;Lc8/vin;ZLandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1, p1, p3, p4}, Lc8/jzk;->deleteOfflineSubscribe(Lc8/hzk;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method
