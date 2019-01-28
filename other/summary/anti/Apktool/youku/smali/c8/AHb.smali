.class public Lc8/AHb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zHb;
    }
.end annotation


# static fields
.field public static final NOT_REQUIRE:I = 0x0

.field public static final REQUIRE_H5:I = 0x1

.field public static final REQUIRE_NATIVE:I = 0x2

.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lc8/AHb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/AHb;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkParams()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public genOpenUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/AHb;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/AHb;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddParamsUrl(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/b/a;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lc8/AHb;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u9996\u6b21\u8fdb\u5165\u52a0\u53c2\uff0c\u53c2\u6570\uff1a urlParams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string/jumbo v0, "urlHandleTime"

    invoke-virtual {p3, v0}, Lcom/alibaba/baichuan/android/trade/b/a;->a(Ljava/lang/String;)V

    new-instance v0, Lc8/vGb;

    invoke-direct {v0}, Lc8/vGb;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lc8/vGb;->e:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lc8/AHb;->genOpenUrl()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, v0, Lc8/vGb;->d:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lc8/vGb;->i:Ljava/util/Map;

    iget-object v1, v0, Lc8/vGb;->i:Ljava/util/Map;

    const-string/jumbo v2, "ui_contextParams"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lc8/yGb;->a()Lc8/yGb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/yGb;->a(Lc8/vGb;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "urlHandleTime"

    invoke-virtual {p3, v1}, Lcom/alibaba/baichuan/android/trade/b/a;->b(Ljava/lang/String;)V

    sget-object v1, Lc8/AHb;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u9996\u6b21\u52a0\u53c2\u540e\u7ed3\u679c\u4e3a url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc8/AHb;->genOpenUrl()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lc8/AHb;->genOpenUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAddParamsUrl(Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/b/a;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lc8/AHb;->getAddParamsUrl(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/b/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalHttpHeaders()Ljava/util/Map;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc8/sHb;->E_SHOW:Ljava/lang/String;

    return-object v0
.end method

.method public getPerformancePageType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "url"

    return-object v0
.end method

.method public getUsabilityPageType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Other_Page"

    return-object v0
.end method

.method public isBackWhenLoginFail()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNativeOpen(Lc8/vHb;)Z
    .locals 7

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lc8/vHb;->getClientType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/MFb;->isApplinkSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lc8/AHb;->requireOpenType()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lc8/AHb;->requireOpenType()I

    move-result v2

    if-ne v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/cHb;->getDouble11OpenType()I

    move-result v2

    if-ne v2, v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-eq v2, v3, :cond_0

    sget-object v2, Lc8/zHb;->a:[I

    invoke-virtual {p1}, Lc8/vHb;->getOpenType()Lcom/alibaba/baichuan/android/trade/model/OpenType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/baichuan/android/trade/model/OpenType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Lc8/AHb;->genOpenUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lc8/vFb;->nativeOpenPatterns:[Ljava/lang/String;

    array-length v5, v4

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v6

    invoke-virtual {v6}, Lc8/cHb;->isForceH5()Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public needTaoke(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requireOpenType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public taokeTraceAndGenUrl(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Lcom/alibaba/baichuan/android/trade/b/a;Lc8/SGb;)V
    .locals 0

    return-void
.end method

.method public tryNativeJump(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Lc8/vHb;Ljava/util/Map;Landroid/app/Activity;)Z
    .locals 8

    const/4 v3, 0x0

    const-string/jumbo v6, "alisdk://"

    const-string/jumbo v0, ""

    if-eqz p1, :cond_2

    iget-object v5, p1, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;->pid:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lc8/vHb;->getClientType()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lc8/vHb;->getBackUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lc8/vHb;->getBackUrl()Ljava/lang/String;

    move-result-object v6

    :cond_1
    const-string/jumbo v1, "appType"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "url"

    invoke-virtual {p0}, Lc8/AHb;->genOpenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;->SHOWURL:Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    invoke-virtual {p0}, Lc8/AHb;->genOpenUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cHb;->getIsvCode()Ljava/lang/String;

    move-result-object v4

    move-object v0, p4

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lc8/XGb;->a(Landroid/content/Context;Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0

    :cond_2
    move-object v5, v3

    goto :goto_0
.end method
