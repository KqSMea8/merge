.class public Lc8/GNp;
.super Lc8/FNp;
.source "DefaultMtopListener.java"

# interfaces
.implements Lc8/INp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.DefaultMtopListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lc8/FNp;-><init>()V

    return-void
.end method


# virtual methods
.method public onCached(Lc8/HNp;Ljava/lang/Object;)V
    .locals 4
    .param p1, "event"    # Lc8/HNp;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 18
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/HNp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const-string/jumbo v0, "mtopsdk.DefaultMtopListener"

    iget-object v1, p1, Lc8/HNp;->seqNo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[onCached]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lc8/HNp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v3

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_0
    return-void
.end method
