.class public Lc8/VF;
.super Ljava/lang/Object;
.source "WVMonitorData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/WF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "stat"
.end annotation


# instance fields
.field public allVerifyTime:J

.field public appSeq:Ljava/lang/String;

.field public finish:I

.field public firstByteTime:J

.field public fromType:I

.field public matchCost:J

.field public onDomLoad:J

.field public onLoad:J

.field public packageAppName:Ljava/lang/String;

.field public packageAppVersion:Ljava/lang/String;

.field final synthetic this$0:Lc8/WF;

.field public verifyCacheSize:I

.field public verifyError:I

.field public verifyResTime:J

.field public verifyTime:J


# direct methods
.method public constructor <init>(Lc8/WF;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 126
    iput-object p1, p0, Lc8/VF;->this$0:Lc8/WF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-wide v2, p0, Lc8/VF;->onLoad:J

    .line 128
    iput-wide v2, p0, Lc8/VF;->onDomLoad:J

    .line 129
    iput v4, p0, Lc8/VF;->finish:I

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Lc8/VF;->fromType:I

    .line 131
    iput-wide v2, p0, Lc8/VF;->firstByteTime:J

    .line 132
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/VF;->packageAppVersion:Ljava/lang/String;

    .line 133
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/VF;->packageAppName:Ljava/lang/String;

    .line 134
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/VF;->appSeq:Ljava/lang/String;

    .line 135
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/VF;->matchCost:J

    .line 136
    iput v4, p0, Lc8/VF;->verifyError:I

    .line 137
    iput-wide v2, p0, Lc8/VF;->verifyResTime:J

    .line 138
    iput-wide v2, p0, Lc8/VF;->verifyTime:J

    .line 139
    iput-wide v2, p0, Lc8/VF;->allVerifyTime:J

    .line 140
    iput v4, p0, Lc8/VF;->verifyCacheSize:I

    return-void
.end method
