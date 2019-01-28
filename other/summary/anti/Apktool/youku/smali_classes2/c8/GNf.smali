.class public Lc8/GNf;
.super Ljava/lang/Object;
.source "TaobaoImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/HNf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriCDNInfo"
.end annotation


# instance fields
.field public final host:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1310
    iput-object p1, p0, Lc8/GNf;->url:Ljava/lang/String;

    .line 1311
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lc8/GNf;->uri:Landroid/net/Uri;

    .line 1312
    iget-object v0, p0, Lc8/GNf;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/GNf;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lc8/GNf;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/GNf;->host:Ljava/lang/String;

    .line 1317
    :goto_0
    return-void

    .line 1315
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/GNf;->host:Ljava/lang/String;

    goto :goto_0
.end method
