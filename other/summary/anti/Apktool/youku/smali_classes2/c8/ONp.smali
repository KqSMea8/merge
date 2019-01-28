.class public Lc8/ONp;
.super Lc8/NNp;
.source "MtopFinishEvent.java"


# instance fields
.field public mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

.field public seqNo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 0
    .param p1, "mtopResponse"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .line 20
    invoke-direct {p0}, Lc8/NNp;-><init>()V

    .line 21
    iput-object p1, p0, Lc8/ONp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 22
    return-void
.end method


# virtual methods
.method public getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lc8/ONp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 31
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "MtopFinishEvent [seqNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/ONp;->seqNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string/jumbo v1, ", mtopResponse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/ONp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
