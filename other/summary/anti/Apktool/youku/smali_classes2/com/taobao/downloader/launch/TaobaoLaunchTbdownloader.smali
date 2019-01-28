.class public Lcom/taobao/downloader/launch/TaobaoLaunchTbdownloader;
.super Ljava/lang/Object;
.source "TaobaoLaunchTbdownloader.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {}, Lc8/Ylf;->getInstance()Lc8/Ylf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Ylf;->init(Landroid/content/Context;)V

    .line 29
    invoke-static {}, Lcom/taobao/downloader/TbDownloader;->init()V

    .line 30
    return-void
.end method
