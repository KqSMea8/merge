.class public Lc8/Gdn;
.super Ljava/lang/Object;
.source "PlayService.java"

# interfaces
.implements Lc8/Fdn;


# instance fields
.field private contextSr:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/Gdn;->contextSr:Ljava/lang/ref/SoftReference;

    .line 24
    return-void
.end method

.method private goDetail(Ljava/lang/String;)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v1, p0, Lc8/Gdn;->contextSr:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 41
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 42
    const-class v1, Lc8/Xgn;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Xgn;

    invoke-interface {v1, v0, p1}, Lc8/Xgn;->goPlay(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GoDetail, videoId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string/jumbo v0, "play"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public handle(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 33
    const-string/jumbo v1, "vid"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "videoId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lc8/Gdn;->goDetail(Ljava/lang/String;)V

    .line 35
    const/4 v1, 0x1

    return v1
.end method
