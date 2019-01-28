.class public final Lc8/qTb;
.super Ljava/lang/Object;
.source "SendManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/oTb;,
        Lc8/pTb;
    }
.end annotation


# instance fields
.field mConfiguration:Lc8/LSb;

.field mContext:Landroid/content/Context;

.field mReportBuilder:Lc8/iTb;

.field mReportSender:Lc8/pTb;

.field mReporterContext:Lc8/kTb;

.field mSending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mWaitingSend:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/NSb;",
            ">;"
        }
    .end annotation
.end field

.field sendListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/RSb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/kTb;Lc8/LSb;Lc8/iTb;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reporterContext"    # Lc8/kTb;
    .param p3, "configuration"    # Lc8/LSb;
    .param p4, "reportBuilder"    # Lc8/iTb;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/qTb;->mWaitingSend:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/qTb;->mSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/qTb;->sendListenerMap:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lc8/qTb;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lc8/qTb;->mReporterContext:Lc8/kTb;

    .line 33
    iput-object p3, p0, Lc8/qTb;->mConfiguration:Lc8/LSb;

    .line 34
    iput-object p4, p0, Lc8/qTb;->mReportBuilder:Lc8/iTb;

    .line 35
    new-instance v0, Lc8/oTb;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/oTb;-><init>(Lc8/qTb;Landroid/content/Context;Lc8/kTb;Lc8/LSb;)V

    iput-object v0, p0, Lc8/qTb;->mReportSender:Lc8/pTb;

    .line 36
    return-void
.end method


# virtual methods
.method public addListener(Lc8/RSb;)V
    .locals 2
    .param p1, "sendListener"    # Lc8/RSb;

    .prologue
    .line 43
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc8/RSb;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/OTb;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lc8/qTb;->sendListenerMap:Ljava/util/Map;

    invoke-interface {p1}, Lc8/RSb;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    return-void
.end method

.method public removeListener(Lc8/RSb;)V
    .locals 2
    .param p1, "sendListener"    # Lc8/RSb;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc8/RSb;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/OTb;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lc8/qTb;->sendListenerMap:Ljava/util/Map;

    invoke-interface {p1}, Lc8/RSb;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    return-void
.end method

.method public sendAllReport()V
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lc8/qTb;->mReportBuilder:Lc8/iTb;

    invoke-virtual {v1}, Lc8/iTb;->listProcessCrashReport()[Lc8/NSb;

    move-result-object v0

    .line 63
    .local v0, "crashReports":[Lc8/NSb;
    invoke-virtual {p0, v0}, Lc8/qTb;->sendReports([Lc8/NSb;)V

    .line 64
    return-void
.end method

.method public sendReport(Lc8/NSb;)V
    .locals 2
    .param p1, "crashReport"    # Lc8/NSb;

    .prologue
    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Lc8/NSb;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lc8/qTb;->sendReports([Lc8/NSb;)V

    .line 73
    return-void
.end method

.method public sendReports([Lc8/NSb;)V
    .locals 8
    .param p1, "crashReports"    # [Lc8/NSb;

    .prologue
    .line 81
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Lc8/NSb;
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 86
    .local v1, "crashReport":Lc8/NSb;
    if-eqz v1, :cond_2

    iget-object v5, v1, Lc8/NSb;->mReportPath:Ljava/lang/String;

    invoke-static {v5}, Lc8/OTb;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    iget-object v5, p0, Lc8/qTb;->mWaitingSend:Ljava/util/Map;

    iget-object v6, v1, Lc8/NSb;->mReportPath:Ljava/lang/String;

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    .end local v1    # "crashReport":Lc8/NSb;
    :cond_3
    iget-object v5, p0, Lc8/qTb;->mWaitingSend:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lc8/qTb;->mSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    new-instance v4, Lc8/nTb;

    const-string/jumbo v5, "CrashReportSender"

    invoke-direct {v4, p0, v5}, Lc8/nTb;-><init>(Lc8/qTb;Ljava/lang/String;)V

    .line 164
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
