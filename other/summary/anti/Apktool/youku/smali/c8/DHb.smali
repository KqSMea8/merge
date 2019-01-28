.class public Lc8/DHb;
.super Lc8/AHb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc8/AHb;-><init>()V

    return-void
.end method


# virtual methods
.method public genOpenUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc8/vFb;->SHOW_CART_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc8/sHb;->E_SHOWCART:Ljava/lang/String;

    return-object v0
.end method

.method public getPerformancePageType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "myCart"

    return-object v0
.end method

.method public getUsabilityPageType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "MyCarts_Page"

    return-object v0
.end method

.method public isBackWhenLoginFail()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needTaoke(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
