.class public Lc8/JK;
.super Ljava/lang/Object;
.source "ConnEvent.java"


# instance fields
.field public connTime:J

.field public isSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/JK;->isSuccess:Z

    .line 15
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lc8/JK;->connTime:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lc8/JK;->isSuccess:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ConnEvent#Success"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ConnEvent#Fail"

    goto :goto_0
.end method
