.class public Lc8/iqb;
.super Ljava/lang/Object;
.source "RichTextNodeManager.java"


# static fields
.field private static final registeredTextNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/hqb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 221
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 224
    sput-object v0, Lc8/iqb;->registeredTextNodes:Ljava/util/Map;

    const-string/jumbo v1, "span"

    new-instance v2, Lc8/kqb;

    invoke-direct {v2}, Lc8/kqb;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lc8/iqb;->registeredTextNodes:Ljava/util/Map;

    const-string/jumbo v1, "image"

    new-instance v2, Lc8/eqb;

    invoke-direct {v2}, Lc8/eqb;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lc8/iqb;->registeredTextNodes:Ljava/util/Map;

    const-string/jumbo v1, "a"

    new-instance v2, Lc8/bqb;

    invoke-direct {v2}, Lc8/bqb;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lc8/gqb;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "instanceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "componentRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 238
    .local v1, "instance":Lc8/gqb;
    if-eqz p3, :cond_0

    .line 239
    :try_start_0
    sget-object v2, Lc8/iqb;->registeredTextNodes:Ljava/util/Map;

    const-string/jumbo v3, "type"

    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/hqb;

    .line 240
    invoke-interface {v2, p0, p1, p2}, Lc8/hqb;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lc8/gqb;

    move-result-object v1

    .line 241
    invoke-virtual {v1, p0, p1, p2, p3}, Lc8/gqb;->parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_0
    return-object v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Richtext"

    invoke-static {v0}, Lc8/xgg;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static registerTextNode(Ljava/lang/String;Lc8/hqb;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "type"    # Lc8/hqb;

    .prologue
    .line 230
    sget-object v0, Lc8/iqb;->registeredTextNodes:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method
