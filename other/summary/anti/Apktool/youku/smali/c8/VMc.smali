.class public final Lc8/VMc;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/SMc;


# static fields
.field private static d:Lc8/VMc;

.field private static e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;


# instance fields
.field private a:Lc8/VLc;

.field private b:Lc8/nQc;

.field private c:Lc8/oQc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lc8/VMc;->d:Lc8/VMc;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/VMc;->a:Lc8/VLc;

    iput-object v0, p0, Lc8/VMc;->b:Lc8/nQc;

    iput-object v0, p0, Lc8/VMc;->c:Lc8/oQc;

    new-instance v1, Lc8/tLc;

    invoke-direct {v1}, Lc8/tLc;-><init>()V

    invoke-virtual {v1, p2}, Lc8/tLc;->a(Ljava/lang/String;)V

    new-instance v0, Lc8/FLc;

    invoke-direct {v0, p1}, Lc8/FLc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/VMc;->a:Lc8/VLc;

    iget-object v0, p0, Lc8/VMc;->a:Lc8/VLc;

    const-class v2, Lc8/nQc;

    invoke-virtual {v0, v2, v1}, Lc8/VLc;->a(Ljava/lang/Class;Lc8/tLc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/nQc;

    iput-object v0, p0, Lc8/VMc;->b:Lc8/nQc;

    iget-object v0, p0, Lc8/VMc;->a:Lc8/VLc;

    const-class v2, Lc8/oQc;

    invoke-virtual {v0, v2, v1}, Lc8/VLc;->a(Ljava/lang/Class;Lc8/tLc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/oQc;

    iput-object v0, p0, Lc8/VMc;->c:Lc8/oQc;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lc8/VMc;
    .locals 2

    const-class v1, Lc8/VMc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/VMc;->d:Lc8/VMc;

    if-nez v0, :cond_0

    new-instance v0, Lc8/VMc;

    invoke-direct {v0, p0, p1}, Lc8/VMc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lc8/VMc;->d:Lc8/VMc;

    :cond_0
    sget-object v0, Lc8/VMc;->d:Lc8/VMc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lc8/VMc;)Lc8/oQc;
    .locals 1

    iget-object v0, p0, Lc8/VMc;->c:Lc8/oQc;

    return-object v0
.end method

.method static synthetic a()Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;
    .locals 1

    sget-object v0, Lc8/VMc;->e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;
    .locals 0

    sput-object p0, Lc8/VMc;->e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;
    .locals 4

    iget-object v0, p0, Lc8/VMc;->c:Lc8/oQc;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lc8/VMc;->e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/WMc;

    invoke-direct {v1, p0, p1}, Lc8/WMc;-><init>(Lc8/VMc;Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const v0, 0x493e0

    :goto_0
    sget-object v1, Lc8/VMc;->e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    if-nez v1, :cond_0

    if-ltz v0, :cond_0

    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v0, v0, -0x32

    goto :goto_0

    :cond_0
    sget-object v0, Lc8/VMc;->e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lc8/VMc;->b:Lc8/nQc;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lc8/VMc;->b:Lc8/nQc;

    invoke-static {p1}, Lc8/IMc;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc8/nQc;->logCollect(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "success"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2
.end method
