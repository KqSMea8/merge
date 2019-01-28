.class public Lc8/QXn;
.super Ljava/lang/Object;
.source "ConnectStat.java"


# instance fields
.field public connect_success:Z

.field public connect_time:J

.field public errMsg:Ljava/lang/String;

.field public header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mTopUpsRequest:Lc8/SXn;

.field public mUpsTimeTraceBean:Lc8/xYn;

.field public read_time:J

.field public response_code:I

.field public url:Ljava/lang/String;

.field public utMsg:Lc8/zYn;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lc8/QXn;->response_code:I

    .line 20
    iput-boolean v0, p0, Lc8/QXn;->connect_success:Z

    .line 23
    iput-wide v2, p0, Lc8/QXn;->connect_time:J

    .line 24
    iput-wide v2, p0, Lc8/QXn;->read_time:J

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/QXn;->utMsg:Lc8/zYn;

    return-void
.end method
