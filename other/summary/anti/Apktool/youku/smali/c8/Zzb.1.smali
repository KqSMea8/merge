.class public Lc8/Zzb;
.super Ljava/lang/Object;
.source "OldDBTransferMgr.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "OldDBTransferMgr"

.field private static usertrackDbName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "usertrack.db"

    sput-object v0, Lc8/Zzb;->usertrackDbName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lc8/Zzb;->usertrackDbName:Ljava/lang/String;

    return-object v0
.end method

.method public static checkAndTransfer()V
    .locals 4

    .prologue
    .line 19
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 20
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    sget-object v2, Lc8/Zzb;->usertrackDbName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 24
    .local v1, "dbfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v2

    new-instance v3, Lc8/Yzb;

    invoke-direct {v3, v0, v1}, Lc8/Yzb;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v2, v3}, Lc8/eCb;->submit(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
