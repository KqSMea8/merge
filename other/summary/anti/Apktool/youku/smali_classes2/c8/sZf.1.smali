.class public Lc8/sZf;
.super Ljava/lang/Object;
.source "TraceableAction.java"


# instance fields
.field protected mBeginEvent:Lc8/kag;

.field public mDomQueueTime:J

.field public mParseJsonNanos:J

.field public mStartMillis:J

.field public mTracingEventId:I

.field public mUIQueueTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/sZf;->mParseJsonNanos:J

    .line 37
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lc8/mag;->nextId()I

    move-result v0

    iput v0, p0, Lc8/sZf;->mTracingEventId:I

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/sZf;->mStartMillis:J

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public onFinishUIExecute()V
    .locals 4

    .prologue
    .line 76
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/sZf;->mBeginEvent:Lc8/kag;

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/sZf;->mBeginEvent:Lc8/kag;

    iget-object v2, v2, Lc8/kag;->iid:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lc8/mag;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lc8/kag;

    move-result-object v0

    .line 78
    .local v0, "endEvent":Lc8/kag;
    iget-object v1, p0, Lc8/sZf;->mBeginEvent:Lc8/kag;

    iget v1, v1, Lc8/kag;->traceId:I

    iput v1, v0, Lc8/kag;->traceId:I

    .line 79
    const-string/jumbo v1, "E"

    iput-object v1, v0, Lc8/kag;->ph:Ljava/lang/String;

    .line 80
    invoke-virtual {v0}, Lc8/kag;->submit()V

    .line 82
    .end local v0    # "endEvent":Lc8/kag;
    :cond_0
    return-void
.end method

.method public onStartDomExecute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "fname"    # Ljava/lang/String;
    .param p3, "ref"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "payload"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, -0x1

    invoke-static {p2, p1, v0}, Lc8/mag;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lc8/kag;

    move-result-object v0

    iput-object v0, p0, Lc8/sZf;->mBeginEvent:Lc8/kag;

    .line 63
    iget-object v0, p0, Lc8/sZf;->mBeginEvent:Lc8/kag;

    iget v1, p0, Lc8/sZf;->mTracingEventId:I

    iput v1, v0, Lc8/kag;->traceId:I

    .line 64
    iget-object v0, p0, Lc8/sZf;->mBeginEvent:Lc8/kag;

    iget-wide v2, p0, Lc8/sZf;->mStartMillis:J

    iput-wide v2, v0, Lc8/kag;->ts:J

    .line 65
    iget-object v0, p0, Lc8/sZf;->mBeginEvent:Lc8/kag;

    const-string/jumbo v1, "B"

    iput-object v1, v0, Lc8/kag;->ph:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lc8/sZf;->mBeginEvent:Lc8/kag;

    iput-object p3, v0, Lc8/kag;->ref:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lc8/sZf;->mBeginEvent:Lc8/kag;

    iput-object p4, v0, Lc8/kag;->name:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lc8/sZf;->mBeginEvent:Lc8/kag;

    iput-object p5, v0, Lc8/kag;->payload:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lc8/sZf;->mBeginEvent:Lc8/kag;

    iget-wide v2, p0, Lc8/sZf;->mParseJsonNanos:J

    invoke-static {v2, v3}, Lc8/jag;->nanosToMillis(J)D

    move-result-wide v2

    iput-wide v2, v0, Lc8/kag;->parseJsonTime:D

    .line 70
    iget-object v0, p0, Lc8/sZf;->mBeginEvent:Lc8/kag;

    const-string/jumbo v1, "JSThread"

    iput-object v1, v0, Lc8/kag;->tname:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lc8/sZf;->mBeginEvent:Lc8/kag;

    invoke-virtual {v0}, Lc8/kag;->submit()V

    .line 73
    :cond_0
    return-void
.end method

.method protected varargs submitPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJ[Z)Lc8/kag;
    .locals 4
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "ph"    # Ljava/lang/String;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p4, "duration"    # D
    .param p6, "ts"    # J
    .param p8, "isSegment"    # [Z

    .prologue
    .line 44
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    iget v1, p0, Lc8/sZf;->mTracingEventId:I

    invoke-static {p1, p3, v1}, Lc8/mag;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lc8/kag;

    move-result-object v0

    .line 46
    .local v0, "event":Lc8/kag;
    iput-wide p6, v0, Lc8/kag;->ts:J

    .line 47
    iput-object p2, v0, Lc8/kag;->ph:Ljava/lang/String;

    .line 48
    iput-wide p4, v0, Lc8/kag;->duration:D

    .line 50
    if-eqz p8, :cond_0

    array-length v1, p8

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 51
    const/4 v1, 0x0

    aget-boolean v1, p8, v1

    iput-boolean v1, v0, Lc8/kag;->isSegment:Z

    .line 54
    :cond_0
    invoke-virtual {v0}, Lc8/kag;->submit()V

    .line 57
    .end local v0    # "event":Lc8/kag;
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lc8/kag;

    invoke-direct {v0}, Lc8/kag;-><init>()V

    goto :goto_0
.end method
