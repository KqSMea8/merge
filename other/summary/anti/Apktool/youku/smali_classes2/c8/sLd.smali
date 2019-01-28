.class public abstract Lc8/sLd;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/rLd;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected appId:Ljava/lang/String;

.field protected base64Encoded:Z

.field protected dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected emitter:Lc8/UKd;

.field protected level:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

.field protected namespace:Ljava/lang/String;

.field protected sessionCheckInterval:J

.field protected sessionContext:Z

.field protected subject:Lc8/qLd;

.field protected threadCount:I

.field protected timeUnit:Ljava/util/concurrent/TimeUnit;

.field protected trackerSession:Lc8/nLd;

.field protected final trackerVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lc8/sLd;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/sLd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lc8/rLd;)V
    .locals 8
    .param p1, "builder"    # Lc8/rLd;

    .prologue
    const/4 v0, 0x2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v1, "3.4.3-SNAPSHOT"

    iput-object v1, p0, Lc8/sLd;->trackerVersion:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lc8/sLd;->dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 187
    iget-object v1, p1, Lc8/rLd;->emitter:Lc8/UKd;

    iput-object v1, p0, Lc8/sLd;->emitter:Lc8/UKd;

    .line 188
    iget-object v1, p1, Lc8/rLd;->appId:Ljava/lang/String;

    iput-object v1, p0, Lc8/sLd;->appId:Ljava/lang/String;

    .line 189
    iget-boolean v1, p1, Lc8/rLd;->base64Encoded:Z

    iput-boolean v1, p0, Lc8/sLd;->base64Encoded:Z

    .line 190
    iget-object v1, p1, Lc8/rLd;->namespace:Ljava/lang/String;

    iput-object v1, p0, Lc8/sLd;->namespace:Ljava/lang/String;

    .line 191
    iget-object v1, p1, Lc8/rLd;->subject:Lc8/qLd;

    iput-object v1, p0, Lc8/sLd;->subject:Lc8/qLd;

    .line 192
    iget-object v1, p1, Lc8/rLd;->logLevel:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

    iput-object v1, p0, Lc8/sLd;->level:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

    .line 193
    iget-boolean v1, p1, Lc8/rLd;->sessionContext:Z

    iput-boolean v1, p0, Lc8/sLd;->sessionContext:Z

    .line 194
    iget-wide v2, p1, Lc8/rLd;->sessionCheckInterval:J

    iput-wide v2, p0, Lc8/sLd;->sessionCheckInterval:J

    .line 195
    iget v1, p1, Lc8/rLd;->threadCount:I

    if-ge v1, v0, :cond_1

    :goto_0
    iput v0, p0, Lc8/sLd;->threadCount:I

    .line 196
    iget-object v0, p1, Lc8/rLd;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lc8/sLd;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 199
    iget-boolean v0, p0, Lc8/sLd;->sessionContext:Z

    if-eqz v0, :cond_0

    .line 200
    new-instance v1, Lc8/nLd;

    iget-wide v2, p1, Lc8/rLd;->foregroundTimeout:J

    iget-wide v4, p1, Lc8/rLd;->backgroundTimeout:J

    iget-object v6, p1, Lc8/rLd;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p1, Lc8/rLd;->context:Landroid/content/Context;

    invoke-direct/range {v1 .. v7}, Lc8/nLd;-><init>(JJLjava/util/concurrent/TimeUnit;Landroid/content/Context;)V

    iput-object v1, p0, Lc8/sLd;->trackerSession:Lc8/nLd;

    .line 207
    :cond_0
    iget-object v0, p1, Lc8/rLd;->logLevel:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

    invoke-static {v0}, Lc8/yLd;->updateLogLevel(Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;)V

    .line 208
    sget-object v0, Lc8/sLd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Tracker created successfully."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/yLd;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    return-void

    .line 195
    :cond_1
    iget v0, p1, Lc8/rLd;->threadCount:I

    goto :goto_0
.end method

.method private addEventPayload(Lc8/RKd;Ljava/util/List;Z)V
    .locals 5
    .param p1, "payload"    # Lc8/RKd;
    .param p3, "attemptEmit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/RKd;",
            "Ljava/util/List",
            "<",
            "Lc8/QKd;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p2, "context":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;>;"
    iget-object v1, p0, Lc8/sLd;->subject:Lc8/qLd;

    if-eqz v1, :cond_0

    .line 226
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lc8/sLd;->subject:Lc8/qLd;

    invoke-virtual {v2}, Lc8/qLd;->getSubject()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Lc8/RKd;->addMap(Ljava/util/Map;)V

    .line 228
    invoke-direct {p0, p2}, Lc8/sLd;->getFinalContext(Ljava/util/List;)Lc8/QKd;

    move-result-object v0

    .line 229
    .local v0, "envelope":Lc8/QKd;
    const-string/jumbo v1, "et"

    invoke-virtual {v0}, Lc8/QKd;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lc8/RKd;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    .end local v0    # "envelope":Lc8/QKd;
    :cond_0
    sget-object v1, Lc8/sLd;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Adding new payload to event storage: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lc8/yLd;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v1, p0, Lc8/sLd;->emitter:Lc8/UKd;

    invoke-virtual {v1, p1, p3}, Lc8/UKd;->add(Lc8/PKd;Z)V

    .line 235
    return-void
.end method

.method private getFinalContext(Ljava/util/List;)Lc8/QKd;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/QKd;",
            ">;)",
            "Lc8/QKd;"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "context":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;>;"
    iget-boolean v4, p0, Lc8/sLd;->sessionContext:Z

    if-eqz v4, :cond_0

    .line 248
    iget-object v4, p0, Lc8/sLd;->trackerSession:Lc8/nLd;

    invoke-virtual {v4}, Lc8/nLd;->getSessionContext()Lc8/QKd;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_0
    iget-object v4, p0, Lc8/sLd;->subject:Lc8/qLd;

    if-eqz v4, :cond_2

    .line 253
    iget-object v4, p0, Lc8/sLd;->subject:Lc8/qLd;

    invoke-virtual {v4}, Lc8/qLd;->getSubjectLocation()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 254
    new-instance v1, Lc8/QKd;

    const-string/jumbo v4, "geolocation"

    iget-object v5, p0, Lc8/sLd;->subject:Lc8/qLd;

    .line 255
    invoke-virtual {v5}, Lc8/qLd;->getSubjectLocation()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lc8/QKd;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    .local v1, "locationPayload":Lc8/QKd;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    .end local v1    # "locationPayload":Lc8/QKd;
    :cond_1
    iget-object v4, p0, Lc8/sLd;->subject:Lc8/qLd;

    invoke-virtual {v4}, Lc8/qLd;->getSubjectMobile()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 259
    new-instance v2, Lc8/QKd;

    const-string/jumbo v4, "mobileinfo"

    iget-object v5, p0, Lc8/sLd;->subject:Lc8/qLd;

    .line 260
    invoke-virtual {v5}, Lc8/qLd;->getSubjectMobile()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lc8/QKd;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    .local v2, "mobilePayload":Lc8/QKd;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v2    # "mobilePayload":Lc8/QKd;
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 267
    .local v0, "contextMaps":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/QKd;

    .line 268
    .local v3, "selfDescribingJson":Lc8/QKd;
    invoke-virtual {v3}, Lc8/QKd;->getMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    .end local v3    # "selfDescribingJson":Lc8/QKd;
    :cond_3
    new-instance v4, Lc8/QKd;

    const-string/jumbo v5, "push_extra_info"

    invoke-direct {v4, v5, v0}, Lc8/QKd;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v4
.end method


# virtual methods
.method public getEmitter()Lc8/UKd;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lc8/sLd;->emitter:Lc8/UKd;

    return-object v0
.end method

.method public restartEventTracking()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lc8/sLd;->dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-virtual {p0}, Lc8/sLd;->getEmitter()Lc8/UKd;

    move-result-object v0

    invoke-virtual {v0}, Lc8/UKd;->flush()V

    goto :goto_0
.end method

.method public setSubject(Lc8/qLd;)V
    .locals 0
    .param p1, "subject"    # Lc8/qLd;

    .prologue
    .line 342
    iput-object p1, p0, Lc8/sLd;->subject:Lc8/qLd;

    .line 343
    return-void
.end method

.method public track(Lc8/iLd;)V
    .locals 1
    .param p1, "event"    # Lc8/iLd;

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc8/sLd;->track(Lc8/iLd;Z)V

    .line 294
    return-void
.end method

.method public track(Lc8/iLd;Z)V
    .locals 3
    .param p1, "event"    # Lc8/iLd;
    .param p2, "attemptEmit"    # Z

    .prologue
    .line 282
    iget-object v2, p0, Lc8/sLd;->dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {p1}, Lc8/iLd;->getSelfDescribingJson()Ljava/util/List;

    move-result-object v0

    .line 287
    .local v0, "context":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;>;"
    invoke-virtual {p1}, Lc8/iLd;->getDataLoad()Lc8/RKd;

    move-result-object v1

    .line 288
    .local v1, "payload":Lc8/RKd;
    invoke-direct {p0, v1, v0, p2}, Lc8/sLd;->addEventPayload(Lc8/RKd;Ljava/util/List;Z)V

    goto :goto_0
.end method
