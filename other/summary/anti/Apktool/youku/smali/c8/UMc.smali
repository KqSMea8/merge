.class public final Lc8/UMc;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/TMc;


# static fields
.field private static a:Lc8/TMc;

.field private static b:Lc8/SMc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lc8/UMc;->a:Lc8/TMc;

    sput-object v0, Lc8/UMc;->b:Lc8/SMc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lc8/TMc;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lc8/UMc;->a:Lc8/TMc;

    if-nez v1, :cond_1

    if-nez p0, :cond_2

    :goto_1
    sput-object v0, Lc8/UMc;->b:Lc8/SMc;

    new-instance v0, Lc8/UMc;

    invoke-direct {v0}, Lc8/UMc;-><init>()V

    sput-object v0, Lc8/UMc;->a:Lc8/TMc;

    :cond_1
    sget-object v0, Lc8/UMc;->a:Lc8/TMc;

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lc8/VMc;->a(Landroid/content/Context;Ljava/lang/String;)Lc8/VMc;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lc8/RMc;)Lc8/QMc;
    .locals 4

    .prologue
    new-instance v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;

    invoke-direct {v1}, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;-><init>()V

    .line 1000
    iget-object v0, p1, Lc8/RMc;->a:Ljava/lang/String;

    invoke-static {v0}, Lc8/IMc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->os:Ljava/lang/String;

    .line 2000
    iget-object v0, p1, Lc8/RMc;->j:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->rpcVersion:Ljava/lang/String;

    const-string/jumbo v0, "1"

    iput-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizType:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    iget-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    const-string/jumbo v2, "apdid"

    .line 3000
    iget-object v3, p1, Lc8/RMc;->b:Ljava/lang/String;

    invoke-static {v3}, Lc8/IMc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    const-string/jumbo v2, "apdidToken"

    .line 4000
    iget-object v3, p1, Lc8/RMc;->c:Ljava/lang/String;

    invoke-static {v3}, Lc8/IMc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    const-string/jumbo v2, "umidToken"

    .line 5000
    iget-object v3, p1, Lc8/RMc;->d:Ljava/lang/String;

    invoke-static {v3}, Lc8/IMc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    const-string/jumbo v2, "dynamicKey"

    .line 6000
    iget-object v3, p1, Lc8/RMc;->e:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7000
    iget-object v0, p1, Lc8/RMc;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->deviceData:Ljava/util/Map;

    sget-object v0, Lc8/UMc;->b:Lc8/SMc;

    invoke-interface {v0, v1}, Lc8/SMc;->a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    move-result-object v0

    invoke-static {v0}, Lc8/PMc;->a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;)Lc8/QMc;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p1, Lc8/RMc;->f:Ljava/util/Map;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lc8/UMc;->b:Lc8/SMc;

    invoke-interface {v0, p1}, Lc8/SMc;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
