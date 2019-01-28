.class public Lc8/oJ;
.super Ljava/lang/Object;
.source "DefaultNetworkAnalysis.java"

# interfaces
.implements Lc8/HJ;


# instance fields
.field private isNetAnalyVaild:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    :try_start_0
    const-string/jumbo v0, "com.taobao.analysis.FlowCenter"

    invoke-static {v0}, Lc8/oJ;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/oJ;->isNetAnalyVaild:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    iput-boolean v3, p0, Lc8/oJ;->isNetAnalyVaild:Z

    .line 21
    const-string/jumbo v0, "DefaultNetworkAnalysis"

    const-string/jumbo v1, "no NWNetworkAnalysisSDK sdk"

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public commitFlow(Lc8/GJ;)V
    .locals 10
    .param p1, "flow"    # Lc8/GJ;

    .prologue
    .line 26
    iget-boolean v0, p0, Lc8/oJ;->isNetAnalyVaild:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcom/taobao/analysis/FlowCenter;->getInstance()Lcom/taobao/analysis/FlowCenter;

    move-result-object v1

    invoke-static {}, Lc8/TI;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lc8/GJ;->refer:Ljava/lang/String;

    iget-object v4, p1, Lc8/GJ;->protocoltype:Ljava/lang/String;

    iget-object v5, p1, Lc8/GJ;->req_identifier:Ljava/lang/String;

    iget-wide v6, p1, Lc8/GJ;->upstream:J

    iget-wide v8, p1, Lc8/GJ;->downstream:J

    invoke-virtual/range {v1 .. v9}, Lcom/taobao/analysis/FlowCenter;->commitFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 30
    :cond_0
    return-void
.end method
