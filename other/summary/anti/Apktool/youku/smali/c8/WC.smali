.class public Lc8/WC;
.super Ljava/lang/Object;
.source "AliNetworkDecider.java"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/INetworkDecider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseNetwork(Ljava/lang/String;)I
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 12
    const-string/jumbo v1, "ws://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "wss://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lc8/DD;->getUseTaobaoNetwork()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method
