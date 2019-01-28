.class public Lc8/EHb;
.super Lc8/AHb;


# static fields
.field public static final ORDER_TYPE:[Ljava/lang/String;

.field public static final TAB_CODE:Ljava/lang/String; = "?tabCode=%s"


# instance fields
.field b:I

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "all"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "waitPay"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "waitSend"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "waitConfirm"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "waitRate"

    aput-object v2, v0, v1

    sput-object v0, Lc8/EHb;->ORDER_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Lc8/AHb;-><init>()V

    iput p1, p0, Lc8/EHb;->b:I

    iput-boolean p2, p0, Lc8/EHb;->c:Z

    return-void
.end method


# virtual methods
.method public checkParams()Z
    .locals 2

    iget v0, p0, Lc8/EHb;->b:I

    if-ltz v0, :cond_0

    iget v0, p0, Lc8/EHb;->b:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public genOpenUrl()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lc8/EHb;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/EHb;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/EHb;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/vFb;->MY_ORDERS_URL:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?tabCode=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lc8/EHb;->b:I

    if-ltz v1, :cond_3

    iget v1, p0, Lc8/EHb;->b:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    iget-boolean v1, p0, Lc8/EHb;->c:Z

    if-nez v1, :cond_2

    const-string/jumbo v1, "&condition={\"extra\":{\"attributes\":{\"ttid\":\"%s\"}}}"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lc8/EHb;->ORDER_TYPE:[Ljava/lang/String;

    iget v3, p0, Lc8/EHb;->b:I

    aget-object v2, v2, v3

    aput-object v2, v1, v4

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/EHb;->a:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lc8/EHb;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-array v1, v5, [Ljava/lang/Object;

    sget-object v2, Lc8/EHb;->ORDER_TYPE:[Ljava/lang/String;

    iget v3, p0, Lc8/EHb;->b:I

    aget-object v2, v2, v3

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/EHb;->a:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/EHb;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc8/sHb;->E_SHOWORDER:Ljava/lang/String;

    return-object v0
.end method

.method public getPerformancePageType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "myOrder"

    return-object v0
.end method

.method public getUsabilityPageType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Order_Page"

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
