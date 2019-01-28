.class public Lc8/oFb;
.super Lc8/rFb;


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "AliBCWebView"

    sput-object v0, Lc8/oFb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc8/rFb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc8/eFb;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2MapString(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc8/QHb;->createUrlParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lc8/oFb;->c:Lc8/NGb;

    iget-object v1, v1, Lc8/NGb;->b:Ljava/util/HashMap;

    const-string/jumbo v2, "ui_contextParams"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lc8/fFb;

    invoke-direct {v0}, Lc8/fFb;-><init>()V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lc8/fFb;->setResultCode(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc8/eFb;->success(Lc8/fFb;)V

    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Lc8/eFb;)Z
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_2

    :cond_0
    new-instance v0, Lc8/fFb;

    const-string/jumbo v1, "6"

    invoke-direct {v0, v1}, Lc8/fFb;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Lc8/fFb;->setResultCode(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3, v0}, Lc8/eFb;->error(Lc8/fFb;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const-string/jumbo v0, "setYbhpss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p3, p2}, Lc8/oFb;->a(Lc8/eFb;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
