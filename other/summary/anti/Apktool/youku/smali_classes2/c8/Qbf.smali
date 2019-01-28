.class public Lc8/Qbf;
.super Landroid/app/Activity;
.source "Nav.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ybf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DemoActivity"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method buildTaskStack(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .param p1, "parent"    # Landroid/net/Uri;
    .param p2, "target"    # Landroid/net/Uri;

    .prologue
    .line 54
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Ybf;->stack(Landroid/net/Uri;)Lc8/Ybf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc8/Ybf;->toUri(Landroid/net/Uri;)Z

    .line 55
    return-void
.end method

.method openItem(J)V
    .locals 3
    .param p1, "item_id"    # J

    .prologue
    .line 50
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "item.taobao.com"

    invoke-static {v1}, Lc8/bcf;->host(Ljava/lang/String;)Lc8/bcf;

    move-result-object v1

    const-string/jumbo v2, "item.htm"

    invoke-virtual {v1, v2}, Lc8/bcf;->path(Ljava/lang/String;)Lc8/bcf;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2, p1, p2}, Lc8/bcf;->param(Ljava/lang/String;J)Lc8/bcf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Lc8/bcf;)Z

    .line 51
    return-void
.end method

.method openUriWithinWebview(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 58
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    .line 60
    .local v0, "nav":Lc8/Ybf;
    invoke-virtual {v0}, Lc8/Ybf;->disallowLoopback()Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/Ybf;->toUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {v0}, Lc8/Ybf;->skipPreprocess()Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Ybf;->allowEscape()Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/Ybf;->toUri(Landroid/net/Uri;)Z

    .line 67
    :cond_0
    return-void
.end method
