.class public Lcom/taobao/downloader/TbDownloader;
.super Ljava/lang/Object;
.source "TbDownloader.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Llf;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Lcom/taobao/orange/OrangeConfigListenerV1;

.field public static mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/fmf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/downloader/TbDownloader;->mRequests:Ljava/util/List;

    .line 32
    new-instance v0, Lc8/Klf;

    invoke-direct {v0}, Lc8/Klf;-><init>()V

    sput-object v0, Lcom/taobao/downloader/TbDownloader;->a:Lcom/taobao/orange/OrangeConfigListenerV1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static getInstance()Lc8/Jlf;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    invoke-static {}, Lc8/Jlf;->getInstance()Lc8/Jlf;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    const-string/jumbo v0, "CompatTBLoader"

    const-string/jumbo v1, "init"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "sdk version"

    aput-object v3, v2, v4

    const-string/jumbo v3, "3.0.0.17-SNAPSHOT"

    aput-object v3, v2, v5

    invoke-static {v0, v1, v6, v2}, Lc8/Nmf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    const-string/jumbo v1, "android_download_task"

    const-string/jumbo v2, "predownload_tasks_version"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "android_download_task"

    aput-object v2, v1, v4

    sget-object v2, Lcom/taobao/downloader/TbDownloader;->a:Lcom/taobao/orange/OrangeConfigListenerV1;

    invoke-virtual {v0, v1, v2}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 107
    new-instance v0, Lc8/Llf;

    invoke-direct {v0, v6}, Lc8/Llf;-><init>(Lc8/Klf;)V

    invoke-static {v0}, Lc8/msf;->registerOnlineNotify(Lc8/jsf;)Z

    .line 108
    return-void
.end method
