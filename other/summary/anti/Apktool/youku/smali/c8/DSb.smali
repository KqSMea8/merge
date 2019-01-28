.class public Lc8/DSb;
.super Ljava/lang/Thread;
.source "CatcherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/FSb;->doScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/FSb;

.field final synthetic val$tracesFinder:Lc8/ESb;


# direct methods
.method constructor <init>(Lc8/FSb;Ljava/lang/String;Lc8/ESb;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 589
    iput-object p1, p0, Lc8/DSb;->this$1:Lc8/FSb;

    iput-object p3, p0, Lc8/DSb;->val$tracesFinder:Lc8/ESb;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 594
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 595
    .local v2, "externalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lc8/DSb;->this$1:Lc8/FSb;

    iget-object v3, v3, Lc8/FSb;->this$0:Lc8/KSb;

    iget-object v3, v3, Lc8/KSb;->mReportBuilder:Lc8/iTb;

    iget-object v4, p0, Lc8/DSb;->val$tracesFinder:Lc8/ESb;

    invoke-virtual {v3, v4, v2}, Lc8/iTb;->buildANRReport(Lc8/ESb;Ljava/util/Map;)Lc8/NSb;

    move-result-object v0

    .line 596
    .local v0, "crashReport":Lc8/NSb;
    iget-object v3, p0, Lc8/DSb;->this$1:Lc8/FSb;

    iget-object v3, v3, Lc8/FSb;->this$0:Lc8/KSb;

    iget-object v3, v3, Lc8/KSb;->mSendManager:Lc8/qTb;

    invoke-virtual {v3, v0}, Lc8/qTb;->sendReport(Lc8/NSb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v0    # "crashReport":Lc8/NSb;
    .end local v2    # "externalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v1

    .line 598
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "send anr report"

    invoke-static {v3, v1}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
