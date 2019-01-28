.class public Lc8/Jyf;
.super Ljava/lang/Object;
.source "ScheduleResultWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public consumeType:I

.field public isLast:Z

.field public newResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOUT;"
        }
    .end annotation
.end field

.field public progress:F

.field public throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "last"    # Z

    .prologue
    .line 10
    .local p0, "this":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TOUT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lc8/Jyf;->consumeType:I

    .line 12
    iput-boolean p2, p0, Lc8/Jyf;->isLast:Z

    .line 13
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    .local p0, "this":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TOUT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Jyf;->consumeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",isLast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/Jyf;->isLast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
