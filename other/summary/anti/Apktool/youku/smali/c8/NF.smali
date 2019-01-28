.class public Lc8/NF;
.super Ljava/lang/Object;
.source "WVMonitorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatRule"
.end annotation


# instance fields
.field public netstat:Z

.field public onDomLoad:J

.field public onLoad:J

.field public resSample:I

.field public resTime:J

.field final synthetic this$0:Lc8/OF;


# direct methods
.method public constructor <init>(Lc8/OF;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 33
    iput-object p1, p0, Lc8/NF;->this$0:Lc8/OF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v0, p0, Lc8/NF;->onLoad:J

    .line 35
    iput-wide v0, p0, Lc8/NF;->onDomLoad:J

    .line 36
    iput-wide v0, p0, Lc8/NF;->resTime:J

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/NF;->netstat:Z

    return-void
.end method
