.class public final Lc8/aEd;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ZDd;
    }
.end annotation


# instance fields
.field private a:Lc8/cEd;

.field private b:Lc8/eEd;


# direct methods
.method public constructor <init>(Lc8/eEd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/aEd;-><init>(Lc8/eEd;B)V

    return-void
.end method

.method private constructor <init>(Lc8/eEd;B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/aEd;->b:Lc8/eEd;

    iget-object v0, p1, Lc8/eEd;->e:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lc8/cEd;

    iget-object v2, p0, Lc8/aEd;->b:Lc8/eEd;

    iget v2, v2, Lc8/eEd;->c:I

    iget-object v3, p0, Lc8/aEd;->b:Lc8/eEd;

    iget v3, v3, Lc8/eEd;->d:I

    invoke-direct {v1, v2, v3, v0}, Lc8/cEd;-><init>(IILjava/net/Proxy;)V

    iput-object v1, p0, Lc8/aEd;->a:Lc8/cEd;

    iget-object v0, p0, Lc8/aEd;->a:Lc8/cEd;

    invoke-virtual {v0}, Lc8/cEd;->b()V

    iget-object v0, p0, Lc8/aEd;->a:Lc8/cEd;

    invoke-virtual {v0}, Lc8/cEd;->a()V

    return-void

    :cond_0
    iget-object v0, p1, Lc8/eEd;->e:Ljava/net/Proxy;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lc8/ZDd;)V
    .locals 4

    iget-object v0, p0, Lc8/aEd;->a:Lc8/cEd;

    iget-object v1, p0, Lc8/aEd;->b:Lc8/eEd;

    invoke-virtual {v1}, Lc8/eEd;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/aEd;->b:Lc8/eEd;

    invoke-virtual {v2}, Lc8/eEd;->b()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lc8/aEd;->b:Lc8/eEd;

    invoke-virtual {v3}, Lc8/eEd;->b_()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lc8/cEd;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lc8/ZDd;)V

    return-void
.end method
