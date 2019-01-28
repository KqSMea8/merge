.class public Lc8/GUf;
.super Ljava/lang/Object;
.source "HotPatchMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/HUf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotPatchUpdateData"
.end annotation


# instance fields
.field public disk_size:Ljava/lang/String;

.field public errorCode:Ljava/lang/String;

.field public errorMsg:Ljava/lang/String;

.field public fromVersion:Ljava/lang/String;

.field public stage:Ljava/lang/String;

.field public success:Z

.field public toVersion:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/tUf;->getMainVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/GUf;->fromVersion:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/GUf;->disk_size:Ljava/lang/String;

    .line 77
    return-void
.end method
