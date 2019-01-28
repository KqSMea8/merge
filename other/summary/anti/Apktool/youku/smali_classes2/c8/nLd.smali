.class public Lc8/nLd;
.super Ljava/lang/Object;
.source "Session.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private accessedLast:J

.field private backgroundTimeout:J

.field private context:Landroid/content/Context;

.field private currentSessionId:Ljava/lang/String;

.field private foregroundTimeout:J

.field private isBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private previousSessionId:Ljava/lang/String;

.field private sessionIndex:I

.field private sessionStorage:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lc8/nLd;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/nLd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Landroid/content/Context;)V
    .locals 15
    .param p1, "foregroundTimeout"    # J
    .param p3, "backgroundTimeout"    # J
    .param p5, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v9, 0x0

    iput-object v9, p0, Lc8/nLd;->currentSessionId:Ljava/lang/String;

    .line 39
    const/4 v9, 0x0

    iput v9, p0, Lc8/nLd;->sessionIndex:I

    .line 40
    const-string/jumbo v9, "SQLITE"

    iput-object v9, p0, Lc8/nLd;->sessionStorage:Ljava/lang/String;

    .line 43
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v9, p0, Lc8/nLd;->isBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    move-object/from16 v0, p5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    iput-wide v10, p0, Lc8/nLd;->foregroundTimeout:J

    .line 64
    move-object/from16 v0, p5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    iput-wide v10, p0, Lc8/nLd;->backgroundTimeout:J

    .line 65
    move-object/from16 v0, p6

    iput-object v0, p0, Lc8/nLd;->context:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lc8/nLd;->getSessionFromFile()Ljava/util/Map;

    move-result-object v5

    .line 67
    .local v5, "sessionInfo":Ljava/util/Map;
    if-nez v5, :cond_0

    .line 68
    invoke-static {}, Lc8/ALd;->getEventId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lc8/nLd;->userId:Ljava/lang/String;

    .line 84
    :goto_0
    invoke-direct {p0}, Lc8/nLd;->updateSessionInfo()V

    .line 85
    invoke-direct {p0}, Lc8/nLd;->updateAccessedTime()V

    .line 87
    sget-object v9, Lc8/nLd;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Tracker Session Object created."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lc8/yLd;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return-void

    .line 71
    :cond_0
    :try_start_0
    const-string/jumbo v9, "userId"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "uid":Ljava/lang/String;
    const-string/jumbo v9, "sessionId"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "sid":Ljava/lang/String;
    const-string/jumbo v9, "sessionIndex"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 75
    .local v6, "si":I
    iput-object v8, p0, Lc8/nLd;->userId:Ljava/lang/String;

    .line 76
    iput v6, p0, Lc8/nLd;->sessionIndex:I

    .line 77
    iput-object v7, p0, Lc8/nLd;->currentSessionId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v6    # "si":I
    .end local v7    # "sid":Ljava/lang/String;
    .end local v8    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 79
    .local v4, "e":Ljava/lang/Exception;
    sget-object v9, Lc8/nLd;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Exception occurred retrieving session info from file: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Lc8/ALd;->getEventId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lc8/nLd;->userId:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSessionFromFile()Ljava/util/Map;
    .locals 2

    .prologue
    .line 185
    const-string/jumbo v0, "snowplow_session_vars"

    iget-object v1, p0, Lc8/nLd;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lc8/xLd;->getMapFromFile(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private saveSessionToFile()Z
    .locals 3

    .prologue
    .line 173
    const-string/jumbo v0, "snowplow_session_vars"

    .line 175
    invoke-virtual {p0}, Lc8/nLd;->getSessionValues()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lc8/nLd;->context:Landroid/content/Context;

    .line 173
    invoke-static {v0, v1, v2}, Lc8/xLd;->saveMapToFile(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private updateAccessedTime()V
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/nLd;->accessedLast:J

    .line 196
    return-void
.end method

.method private updateSessionInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    iget-object v0, p0, Lc8/nLd;->currentSessionId:Ljava/lang/String;

    iput-object v0, p0, Lc8/nLd;->previousSessionId:Ljava/lang/String;

    .line 156
    invoke-static {}, Lc8/ALd;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/nLd;->currentSessionId:Ljava/lang/String;

    .line 157
    iget v0, p0, Lc8/nLd;->sessionIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/nLd;->sessionIndex:I

    .line 159
    sget-object v0, Lc8/nLd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Session information is updated:"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    sget-object v0, Lc8/nLd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " + Session ID: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lc8/nLd;->currentSessionId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    sget-object v0, Lc8/nLd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " + Previous Session ID: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lc8/nLd;->previousSessionId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    sget-object v0, Lc8/nLd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " + Session Index: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lc8/nLd;->sessionIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-direct {p0}, Lc8/nLd;->saveSessionToFile()Z

    .line 165
    return-void
.end method


# virtual methods
.method public checkAndUpdateSession()V
    .locals 7

    .prologue
    .line 107
    sget-object v0, Lc8/nLd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Checking and updating session information."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 112
    .local v2, "checkTime":J
    iget-object v0, p0, Lc8/nLd;->isBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-wide v4, p0, Lc8/nLd;->backgroundTimeout:J

    .line 118
    .local v4, "range":J
    :goto_0
    iget-wide v0, p0, Lc8/nLd;->accessedLast:J

    invoke-static/range {v0 .. v5}, Lc8/ALd;->isTimeInRange(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lc8/nLd;->updateSessionInfo()V

    .line 120
    invoke-direct {p0}, Lc8/nLd;->updateAccessedTime()V

    .line 122
    :cond_0
    return-void

    .line 115
    .end local v4    # "range":J
    :cond_1
    iget-wide v4, p0, Lc8/nLd;->foregroundTimeout:J

    .restart local v4    # "range":J
    goto :goto_0
.end method

.method public getSessionContext()Lc8/QKd;
    .locals 3

    .prologue
    .line 96
    sget-object v0, Lc8/nLd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Getting session context..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/yLd;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-direct {p0}, Lc8/nLd;->updateAccessedTime()V

    .line 98
    new-instance v0, Lc8/QKd;

    const-string/jumbo v1, "client_session"

    invoke-virtual {p0}, Lc8/nLd;->getSessionValues()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/QKd;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSessionValues()Ljava/util/Map;
    .locals 3

    .prologue
    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v0, "sessionValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "userId"

    iget-object v2, p0, Lc8/nLd;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v1, "sessionId"

    iget-object v2, p0, Lc8/nLd;->currentSessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v1, "previousSessionId"

    iget-object v2, p0, Lc8/nLd;->previousSessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v1, "sessionIndex"

    iget v2, p0, Lc8/nLd;->sessionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v1, "storageMechanism"

    iget-object v2, p0, Lc8/nLd;->sessionStorage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-object v0
.end method
