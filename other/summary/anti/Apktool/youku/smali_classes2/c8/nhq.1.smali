.class public Lc8/nhq;
.super Ljava/lang/Object;
.source "RestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/thq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private callbackExecutor:Ljava/util/concurrent/Executor;

.field private clientProvider:Lc8/Ohq;

.field private converter:Lc8/aiq;

.field private endpoint:Lc8/Dgq;

.field private errorHandler:Lc8/Hgq;

.field private httpExecutor:Ljava/util/concurrent/Executor;

.field private log:Lc8/phq;

.field private logLevel:Lretrofit/RestAdapter$LogLevel;

.field private profiler:Lc8/Zgq;

.field private requestInterceptor:Lc8/fhq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    sget-object v0, Lretrofit/RestAdapter$LogLevel;->NONE:Lretrofit/RestAdapter$LogLevel;

    iput-object v0, p0, Lc8/nhq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    return-void
.end method

.method private ensureSaneDefaults()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lc8/nhq;->converter:Lc8/aiq;

    if-nez v0, :cond_0

    .line 688
    invoke-static {}, Lc8/Xgq;->get()Lc8/Xgq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Xgq;->defaultConverter()Lc8/aiq;

    move-result-object v0

    iput-object v0, p0, Lc8/nhq;->converter:Lc8/aiq;

    .line 690
    :cond_0
    iget-object v0, p0, Lc8/nhq;->clientProvider:Lc8/Ohq;

    if-nez v0, :cond_1

    .line 691
    invoke-static {}, Lc8/Xgq;->get()Lc8/Xgq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Xgq;->defaultClient()Lc8/Ohq;

    move-result-object v0

    iput-object v0, p0, Lc8/nhq;->clientProvider:Lc8/Ohq;

    .line 693
    :cond_1
    iget-object v0, p0, Lc8/nhq;->httpExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_2

    .line 694
    invoke-static {}, Lc8/Xgq;->get()Lc8/Xgq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Xgq;->defaultHttpExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lc8/nhq;->httpExecutor:Ljava/util/concurrent/Executor;

    .line 696
    :cond_2
    iget-object v0, p0, Lc8/nhq;->callbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_3

    .line 697
    invoke-static {}, Lc8/Xgq;->get()Lc8/Xgq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Xgq;->defaultCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lc8/nhq;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 699
    :cond_3
    iget-object v0, p0, Lc8/nhq;->errorHandler:Lc8/Hgq;

    if-nez v0, :cond_4

    .line 700
    sget-object v0, Lc8/Hgq;->DEFAULT:Lc8/Hgq;

    iput-object v0, p0, Lc8/nhq;->errorHandler:Lc8/Hgq;

    .line 702
    :cond_4
    iget-object v0, p0, Lc8/nhq;->log:Lc8/phq;

    if-nez v0, :cond_5

    .line 703
    invoke-static {}, Lc8/Xgq;->get()Lc8/Xgq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Xgq;->defaultLog()Lc8/phq;

    move-result-object v0

    iput-object v0, p0, Lc8/nhq;->log:Lc8/phq;

    .line 705
    :cond_5
    iget-object v0, p0, Lc8/nhq;->requestInterceptor:Lc8/fhq;

    if-nez v0, :cond_6

    .line 706
    sget-object v0, Lc8/fhq;->NONE:Lc8/fhq;

    iput-object v0, p0, Lc8/nhq;->requestInterceptor:Lc8/fhq;

    .line 708
    :cond_6
    return-void
.end method


# virtual methods
.method public build()Lc8/thq;
    .locals 12

    .prologue
    .line 678
    iget-object v0, p0, Lc8/nhq;->endpoint:Lc8/Dgq;

    if-nez v0, :cond_0

    .line 679
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Endpoint may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_0
    invoke-direct {p0}, Lc8/nhq;->ensureSaneDefaults()V

    .line 682
    new-instance v0, Lc8/thq;

    iget-object v1, p0, Lc8/nhq;->endpoint:Lc8/Dgq;

    iget-object v2, p0, Lc8/nhq;->clientProvider:Lc8/Ohq;

    iget-object v3, p0, Lc8/nhq;->httpExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lc8/nhq;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lc8/nhq;->requestInterceptor:Lc8/fhq;

    iget-object v6, p0, Lc8/nhq;->converter:Lc8/aiq;

    iget-object v7, p0, Lc8/nhq;->profiler:Lc8/Zgq;

    iget-object v8, p0, Lc8/nhq;->errorHandler:Lc8/Hgq;

    iget-object v9, p0, Lc8/nhq;->log:Lc8/phq;

    iget-object v10, p0, Lc8/nhq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lc8/thq;-><init>(Lc8/Dgq;Lc8/Ohq;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lc8/fhq;Lc8/aiq;Lc8/Zgq;Lc8/Hgq;Lc8/phq;Lretrofit/RestAdapter$LogLevel;Lc8/lhq;)V

    return-object v0
.end method

.method public setClient(Lc8/Ohq;)Lc8/nhq;
    .locals 2
    .param p1, "clientProvider"    # Lc8/Ohq;

    .prologue
    .line 592
    if-nez p1, :cond_0

    .line 593
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Client provider may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_0
    iput-object p1, p0, Lc8/nhq;->clientProvider:Lc8/Ohq;

    .line 596
    return-object p0
.end method

.method public setClient(Lc8/Phq;)Lc8/nhq;
    .locals 2
    .param p1, "client"    # Lc8/Phq;

    .prologue
    .line 580
    if-nez p1, :cond_0

    .line 581
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Client may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_0
    new-instance v0, Lc8/mhq;

    invoke-direct {v0, p0, p1}, Lc8/mhq;-><init>(Lc8/nhq;Lc8/Phq;)V

    invoke-virtual {p0, v0}, Lc8/nhq;->setClient(Lc8/Ohq;)Lc8/nhq;

    move-result-object v0

    return-object v0
.end method

.method public setConverter(Lc8/aiq;)Lc8/nhq;
    .locals 2
    .param p1, "converter"    # Lc8/aiq;

    .prologue
    .line 630
    if-nez p1, :cond_0

    .line 631
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Converter may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_0
    iput-object p1, p0, Lc8/nhq;->converter:Lc8/aiq;

    .line 634
    return-object p0
.end method

.method public setEndpoint(Lc8/Dgq;)Lc8/nhq;
    .locals 2
    .param p1, "endpoint"    # Lc8/Dgq;

    .prologue
    .line 571
    if-nez p1, :cond_0

    .line 572
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Endpoint may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_0
    iput-object p1, p0, Lc8/nhq;->endpoint:Lc8/Dgq;

    .line 575
    return-object p0
.end method

.method public setEndpoint(Ljava/lang/String;)Lc8/nhq;
    .locals 2
    .param p1, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 562
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 563
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Endpoint may not be blank."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_1
    invoke-static {p1}, Lc8/Fgq;->newFixedEndpoint(Ljava/lang/String;)Lc8/Dgq;

    move-result-object v0

    iput-object v0, p0, Lc8/nhq;->endpoint:Lc8/Dgq;

    .line 566
    return-object p0
.end method

.method public setErrorHandler(Lc8/Hgq;)Lc8/nhq;
    .locals 2
    .param p1, "errorHandler"    # Lc8/Hgq;

    .prologue
    .line 651
    if-nez p1, :cond_0

    .line 652
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Error handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_0
    iput-object p1, p0, Lc8/nhq;->errorHandler:Lc8/Hgq;

    .line 655
    return-object p0
.end method

.method public setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lc8/nhq;
    .locals 2
    .param p1, "httpExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 608
    if-nez p1, :cond_0

    .line 609
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "HTTP executor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_0
    if-nez p2, :cond_1

    .line 612
    new-instance p2, Lc8/Ehq;

    .end local p2    # "callbackExecutor":Ljava/util/concurrent/Executor;
    invoke-direct {p2}, Lc8/Ehq;-><init>()V

    .line 614
    .restart local p2    # "callbackExecutor":Ljava/util/concurrent/Executor;
    :cond_1
    iput-object p1, p0, Lc8/nhq;->httpExecutor:Ljava/util/concurrent/Executor;

    .line 615
    iput-object p2, p0, Lc8/nhq;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 616
    return-object p0
.end method

.method public setLog(Lc8/phq;)Lc8/nhq;
    .locals 2
    .param p1, "log"    # Lc8/phq;

    .prologue
    .line 660
    if-nez p1, :cond_0

    .line 661
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Log may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_0
    iput-object p1, p0, Lc8/nhq;->log:Lc8/phq;

    .line 664
    return-object p0
.end method

.method public setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lc8/nhq;
    .locals 2
    .param p1, "logLevel"    # Lretrofit/RestAdapter$LogLevel;

    .prologue
    .line 669
    if-nez p1, :cond_0

    .line 670
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Log level may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_0
    iput-object p1, p0, Lc8/nhq;->logLevel:Lretrofit/RestAdapter$LogLevel;

    .line 673
    return-object p0
.end method

.method public setProfiler(Lc8/Zgq;)Lc8/nhq;
    .locals 2
    .param p1, "profiler"    # Lc8/Zgq;

    .prologue
    .line 639
    if-nez p1, :cond_0

    .line 640
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Profiler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_0
    iput-object p1, p0, Lc8/nhq;->profiler:Lc8/Zgq;

    .line 643
    return-object p0
.end method

.method public setRequestInterceptor(Lc8/fhq;)Lc8/nhq;
    .locals 2
    .param p1, "requestInterceptor"    # Lc8/fhq;

    .prologue
    .line 621
    if-nez p1, :cond_0

    .line 622
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Request interceptor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_0
    iput-object p1, p0, Lc8/nhq;->requestInterceptor:Lc8/fhq;

    .line 625
    return-object p0
.end method
