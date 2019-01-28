.class public Lc8/VZb;
.super Lc8/aac;


# static fields
.field public static a:Lc8/VZb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc8/VZb;

    invoke-direct {v0}, Lc8/VZb;-><init>()V

    sput-object v0, Lc8/VZb;->a:Lc8/VZb;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc8/aac;-><init>()V

    const-string/jumbo v0, "BC_WantCoupon"

    iput-object v0, p0, Lc8/VZb;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lc8/PZb;)Lcom/alibaba/sdk/trade/container/b/d;
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/trade/container/b/d;

    invoke-direct {v0}, Lcom/alibaba/sdk/trade/container/b/d;-><init>()V

    iget-object v1, p0, Lc8/VZb;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/sdk/trade/container/b/d;->a:Ljava/lang/String;

    invoke-interface {p1}, Lc8/PZb;->getCoupon()Lc8/YZb;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/YZb;->a(Lcom/alibaba/sdk/trade/container/b/d;)V

    return-object v0
.end method

.method static synthetic a(Lc8/VZb;Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc8/VZb;->a(Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    const-string/jumbo v1, "FAIL_SYS_LOGIN_CANCEL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "210221"

    :goto_0
    const-string/jumbo v1, "BCPCSDK"

    iget-object v2, p1, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-static {v1, p2, v0, v2}, Lc8/wac;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "210251"

    goto :goto_0
.end method

.method private a(Lc8/PZb;Lc8/bac;)Z
    .locals 3

    invoke-interface {p1}, Lc8/PZb;->getCoupon()Lc8/YZb;

    move-result-object v0

    invoke-interface {v0}, Lc8/YZb;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PARAM_ERROR"

    const-string/jumbo v1, "\u53c2\u6570\u9519\u8bef"

    invoke-interface {p2, v0, v1}, Lc8/bac;->onError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lc8/qac;->a()Lc8/qac;

    move-result-object v0

    invoke-direct {p0, p1}, Lc8/VZb;->a(Lc8/PZb;)Lcom/alibaba/sdk/trade/container/b/d;

    move-result-object v1

    new-instance v2, Lc8/WZb;

    invoke-direct {v2, p0, p2, p1}, Lc8/WZb;-><init>(Lc8/VZb;Lc8/bac;Lc8/PZb;)V

    invoke-virtual {v0, v1, v2}, Lc8/qac;->a(Lcom/alibaba/sdk/trade/container/b/d;Lc8/tac;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Lc8/bac;)V
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lc8/PZb;

    if-eqz v0, :cond_0

    check-cast p1, Lc8/PZb;

    invoke-direct {p0, p1, p2}, Lc8/VZb;->a(Lc8/PZb;Lc8/bac;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PARAM_ERROR"

    const-string/jumbo v1, "\u53c2\u6570\u9519\u8bef"

    invoke-interface {p2, v0, v1}, Lc8/bac;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getWantName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "BCWantCoupon"

    return-object v0
.end method
