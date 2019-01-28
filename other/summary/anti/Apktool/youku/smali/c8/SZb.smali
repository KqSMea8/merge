.class public Lc8/SZb;
.super Lc8/rFb;


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "AlibcActivity"

    sput-object v0, Lc8/SZb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc8/rFb;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Lc8/eFb;)Z
    .locals 13

    const-wide/16 v8, -0x1

    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v7, -0x1

    const-string/jumbo v6, ""

    const-string/jumbo v2, ""

    :try_start_0
    invoke-static {p1}, Lc8/AIb;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2MapObject(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "uuid"

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lc8/RHb;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "supplierId"

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lc8/RHb;->obj2Long(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :try_start_1
    const-string/jumbo v3, "sourceId"

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lc8/RHb;->obj2Long(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :try_start_2
    const-string/jumbo v10, "asac"

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lc8/RHb;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "trackParams"

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lc8/RHb;->obj2MapString(Ljava/lang/Object;)Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    if-eq v3, v7, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    new-instance v0, Lc8/fFb;

    const-string/jumbo v1, "2"

    invoke-direct {v0, v1}, Lc8/fFb;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lc8/eFb;->error(Lc8/fFb;)V

    :goto_1
    return v11

    :catch_0
    move-exception v0

    move-wide v4, v8

    move-object v3, v6

    move-object v6, v0

    move-object v0, v2

    move v2, v7

    :goto_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v3

    move v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    invoke-static {v7}, Lc8/cac;->getComponentByType(I)Lc8/aac;

    move-result-object v7

    new-instance v8, Lc8/QZb;

    invoke-direct {v8}, Lc8/QZb;-><init>()V

    iput-object v6, v8, Lc8/QZb;->mUUID:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v8, Lc8/QZb;->mSupplierId:Ljava/lang/Long;

    iput v3, v8, Lc8/QZb;->mCouponInstanceSource:I

    iput-object v2, v8, Lc8/QZb;->mASAC:Ljava/lang/String;

    iput-object v1, v8, Lc8/QZb;->mYbhpssParams:Ljava/util/Map;

    iput-object v0, v8, Lc8/QZb;->mExtParams:Ljava/util/Map;

    new-instance v0, Lc8/TZb;

    invoke-direct {v0, p0, p2}, Lc8/TZb;-><init>(Lc8/SZb;Lc8/eFb;)V

    invoke-virtual {v7, v8, v0}, Lc8/aac;->execute(Ljava/lang/Object;Lc8/bac;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v6

    move-object v6, v0

    move-object v0, v2

    move v2, v7

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move v2, v3

    move-object v3, v6

    move-object v6, v12

    goto :goto_2
.end method

.method private b(Ljava/lang/String;Lc8/eFb;)Z
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lc8/cac;->getComponentByType(I)Lc8/aac;

    move-result-object v0

    new-instance v1, Lc8/RZb;

    invoke-direct {v1}, Lc8/RZb;-><init>()V

    new-instance v2, Lc8/UZb;

    invoke-direct {v2, p0, p2}, Lc8/UZb;-><init>(Lc8/SZb;Lc8/eFb;)V

    invoke-virtual {v0, v1, v2}, Lc8/aac;->execute(Ljava/lang/Object;Lc8/bac;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Lc8/eFb;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_2

    :cond_0
    new-instance v1, Lc8/fFb;

    const-string/jumbo v2, "6"

    invoke-direct {v1, v2}, Lc8/fFb;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Lc8/fFb;->setResultCode(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3, v1}, Lc8/eFb;->error(Lc8/fFb;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string/jumbo v1, "getCoupon"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p2, p3}, Lc8/SZb;->a(Ljava/lang/String;Lc8/eFb;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "queryCoupon"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, p3}, Lc8/SZb;->b(Ljava/lang/String;Lc8/eFb;)Z

    move-result v0

    goto :goto_0
.end method
