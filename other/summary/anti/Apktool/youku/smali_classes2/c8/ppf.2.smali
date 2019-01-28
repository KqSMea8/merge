.class public final Lc8/ppf;
.super Ljava/lang/Object;
.source "AlibcFlowCustomsVisa.java"

# interfaces
.implements Lc8/ypf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/rpf;->visaIsVaild(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string/jumbo v0, "AlibcVisa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get visa for network -> error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public onSuccess(Lcom/taobao/flowcustoms/visa/VisaInfo;)V
    .locals 2
    .param p1, "visaInfo"    # Lcom/taobao/flowcustoms/visa/VisaInfo;

    .prologue
    .line 125
    const-string/jumbo v0, "AlibcVisa"

    const-string/jumbo v1, "get visa for network -> success"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method
