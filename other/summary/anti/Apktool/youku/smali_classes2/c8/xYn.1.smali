.class public Lc8/xYn;
.super Ljava/lang/Object;
.source "UpsTimeTraceBean.java"


# instance fields
.field public time:J

.field public timeEndParse:J

.field public timeGetCkey:J

.field public timeStartParseResult:J

.field public timeStartRequest:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startTrace()V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/xYn;->time:J

    .line 20
    return-void
.end method

.method public traceTimeEndParse()V
    .locals 4

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 43
    .local v0, "t":J
    iget-wide v2, p0, Lc8/xYn;->time:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lc8/xYn;->timeEndParse:J

    .line 44
    iput-wide v0, p0, Lc8/xYn;->time:J

    .line 45
    return-void
.end method

.method public traceTimeGetCkey()V
    .locals 4

    .prologue
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24
    .local v0, "t":J
    iget-wide v2, p0, Lc8/xYn;->time:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lc8/xYn;->timeGetCkey:J

    .line 25
    iput-wide v0, p0, Lc8/xYn;->time:J

    .line 26
    return-void
.end method

.method public traceTimeStartParseResult()V
    .locals 4

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    .local v0, "t":J
    iget-wide v2, p0, Lc8/xYn;->time:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lc8/xYn;->timeStartParseResult:J

    .line 38
    iput-wide v0, p0, Lc8/xYn;->time:J

    .line 39
    return-void
.end method

.method public traceTimeStartRequest()V
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 30
    .local v0, "t":J
    iget-wide v2, p0, Lc8/xYn;->time:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lc8/xYn;->timeStartRequest:J

    .line 31
    iput-wide v0, p0, Lc8/xYn;->time:J

    .line 32
    return-void
.end method
