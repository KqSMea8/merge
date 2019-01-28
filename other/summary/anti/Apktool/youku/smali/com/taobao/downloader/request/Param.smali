.class public Lcom/taobao/downloader/request/Param;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public askIfNetLimit:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public bizId:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public callbackCondition:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public downloadStrategy:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public fileStorePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public foreground:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public from:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public network:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public notificationUI:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public notificationVisibility:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public priority:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public retryTimes:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public useCache:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0xa

    iput v0, p0, Lcom/taobao/downloader/request/Param;->priority:I

    .line 9
    const/4 v0, 0x7

    iput v0, p0, Lcom/taobao/downloader/request/Param;->network:I

    .line 11
    iput v2, p0, Lcom/taobao/downloader/request/Param;->callbackCondition:I

    .line 15
    iput-boolean v1, p0, Lcom/taobao/downloader/request/Param;->foreground:Z

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/taobao/downloader/request/Param;->retryTimes:I

    .line 19
    iput-boolean v2, p0, Lcom/taobao/downloader/request/Param;->useCache:Z

    .line 22
    iput-boolean v1, p0, Lcom/taobao/downloader/request/Param;->askIfNetLimit:Z

    return-void
.end method
