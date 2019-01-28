.class public final Lc8/QJd;
.super Ljava/lang/Object;
.source "SourceCloseUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static close(Lc8/JId;Lc8/VHd;)V
    .locals 2
    .param p0, "response"    # Lc8/JId;
    .param p1, "request"    # Lc8/VHd;

    .prologue
    .line 38
    invoke-virtual {p1}, Lc8/VHd;->getResponseAs()Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    move-result-object v0

    sget-object v1, Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/meizu/cloud/pushsdk/networking/common/ResponseType;

    if-eq v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 39
    invoke-virtual {p0}, Lc8/JId;->body()Lc8/KId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lc8/JId;->body()Lc8/KId;

    move-result-object v0

    invoke-virtual {v0}, Lc8/KId;->source()Lc8/AJd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lc8/JId;->body()Lc8/KId;

    move-result-object v0

    invoke-virtual {v0}, Lc8/KId;->source()Lc8/AJd;

    move-result-object v0

    invoke-interface {v0}, Lc8/AJd;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Unable to close source data"

    invoke-static {v0}, Lc8/IHd;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
