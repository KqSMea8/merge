.class public Lc8/Cgb;
.super Ljava/lang/Object;
.source "CookieManagerService.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWebViewProxy()Lc8/tgb;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lc8/Bgb;->mWebViewProxy:Lc8/tgb;

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lc8/Bgb;->mWebViewProxy:Lc8/tgb;

    .line 19
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lc8/cib;->getInstance()Lc8/cib;

    move-result-object v0

    goto :goto_0
.end method
