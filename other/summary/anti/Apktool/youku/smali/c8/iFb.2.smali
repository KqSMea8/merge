.class public Lc8/iFb;
.super Lc8/rFb;


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "AliBCAppLink"

    sput-object v0, Lc8/iFb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc8/rFb;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Lc8/eFb;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    new-instance v0, Lc8/fFb;

    const-string/jumbo v2, "6"

    invoke-direct {v0, v2}, Lc8/fFb;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "2"

    invoke-virtual {v0, v2}, Lc8/fFb;->setResultCode(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3, v0}, Lc8/eFb;->error(Lc8/fFb;)V

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    :try_start_0
    invoke-static {p2}, Lc8/AIb;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lc8/RHb;->obj2MapObject(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lc8/RHb;->obj2String(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    const-string/jumbo v5, "params"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lc8/RHb;->obj2MapObject(Ljava/lang/Object;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_1
    if-eqz v3, :cond_3

    if-nez v4, :cond_4

    :cond_3
    new-instance v1, Lc8/fFb;

    const-string/jumbo v2, "6"

    invoke-direct {v1, v2}, Lc8/fFb;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Lc8/fFb;->setResultCode(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lc8/eFb;->error(Lc8/fFb;)V

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v4

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "shop"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lc8/MFb;->getInstance()Lc8/MFb;

    move-result-object v1

    iget-object v2, p0, Lc8/iFb;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Lc8/MFb;->jumpShop(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v1

    :cond_5
    :goto_3
    if-eqz v1, :cond_8

    sget-object v1, Lc8/fFb;->RET_SUCCESS:Lc8/fFb;

    invoke-virtual {p3, v1}, Lc8/eFb;->success(Lc8/fFb;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "detail"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lc8/MFb;->getInstance()Lc8/MFb;

    move-result-object v1

    iget-object v2, p0, Lc8/iFb;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Lc8/MFb;->jumpDetail(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v1

    goto :goto_3

    :cond_7
    const-string/jumbo v2, "url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lc8/MFb;->getInstance()Lc8/MFb;

    move-result-object v1

    iget-object v2, p0, Lc8/iFb;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Lc8/MFb;->jumpTBURI(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v1

    goto :goto_3

    :cond_8
    sget-object v1, Lc8/fFb;->RET_FAIL:Lc8/fFb;

    invoke-virtual {p3, v1}, Lc8/eFb;->error(Lc8/fFb;)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto :goto_2
.end method
