.class public Lc8/SYm;
.super Ljava/lang/Object;
.source "PopMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/TYm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pop"
.end annotation


# instance fields
.field dismissTime:J

.field displayedTime:J

.field loadError:Z

.field loadErrorCode:Ljava/lang/String;

.field loadErrorTime:J

.field loadedTime:J

.field poppedTime:J

.field proHost:Ljava/lang/String;

.field url:Ljava/lang/String;

.field userClose:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-wide v0, p0, Lc8/SYm;->poppedTime:J

    .line 104
    iput-wide v0, p0, Lc8/SYm;->loadedTime:J

    .line 105
    iput-boolean v2, p0, Lc8/SYm;->loadError:Z

    .line 106
    iput-wide v0, p0, Lc8/SYm;->loadErrorTime:J

    .line 107
    iput-wide v0, p0, Lc8/SYm;->displayedTime:J

    .line 108
    iput-wide v0, p0, Lc8/SYm;->dismissTime:J

    .line 109
    iput-boolean v2, p0, Lc8/SYm;->userClose:Z

    .line 111
    const-string/jumbo v0, "def.l"

    iput-object v0, p0, Lc8/SYm;->loadErrorCode:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "def.u"

    iput-object v0, p0, Lc8/SYm;->url:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "def.p"

    iput-object v0, p0, Lc8/SYm;->proHost:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getPoppedToDismissTime()J
    .locals 4

    .prologue
    .line 128
    iget-wide v0, p0, Lc8/SYm;->dismissTime:J

    iget-wide v2, p0, Lc8/SYm;->poppedTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getPoppedToDisplayedTime()J
    .locals 4

    .prologue
    .line 124
    iget-wide v0, p0, Lc8/SYm;->displayedTime:J

    iget-wide v2, p0, Lc8/SYm;->poppedTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getPoppedToUrlLoadErrorTime()J
    .locals 4

    .prologue
    .line 116
    iget-wide v0, p0, Lc8/SYm;->loadErrorTime:J

    iget-wide v2, p0, Lc8/SYm;->poppedTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getPoppedToUrlLoadedTime()J
    .locals 4

    .prologue
    .line 120
    iget-wide v0, p0, Lc8/SYm;->loadedTime:J

    iget-wide v2, p0, Lc8/SYm;->poppedTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
