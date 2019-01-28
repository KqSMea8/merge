.class public Lc8/lLj;
.super Lc8/lXe;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mLj;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/mLj;


# direct methods
.method constructor <init>(Lc8/mLj;)V
    .locals 0
    .param p1, "this$1"    # Lc8/mLj;

    .prologue
    .line 865
    iput-object p1, p0, Lc8/lLj;->this$1:Lc8/mLj;

    invoke-direct {p0}, Lc8/lXe;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errDesc"    # Ljava/lang/String;

    .prologue
    .line 873
    const-string/jumbo v0, "YKAccs.init"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Agoo bindAgoo onFailure errCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " errDesc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 868
    const-string/jumbo v0, "YKAccs.init"

    const-string/jumbo v1, "Agoo bindAgoo onSuccess"

    invoke-static {v0, v1}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    return-void
.end method
