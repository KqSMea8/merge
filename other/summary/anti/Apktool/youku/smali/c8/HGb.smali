.class public Lc8/HGb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/rGb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".nativeTaobao"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "alisdk://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/handleraction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lc8/sGb;)Z
    .locals 8

    const/4 v2, 0x0

    invoke-static {}, Lc8/HGb;->a()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "shop_id"

    invoke-virtual {p1, v0}, Lc8/sGb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "pid"

    invoke-virtual {p1, v0}, Lc8/sGb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p1, Lc8/sGb;->g:Landroid/app/Activity;

    sget-object v1, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;->SHOWSHOP:Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/cHb;->getIsvCode()Ljava/lang/String;

    move-result-object v4

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lc8/XGb;->a(Landroid/content/Context;Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method
