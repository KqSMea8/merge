.class public Lc8/FLj;
.super Lc8/lXe;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/GLj;->onUserLogout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/GLj;


# direct methods
.method constructor <init>(Lc8/GLj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/GLj;

    .prologue
    .line 1400
    iput-object p1, p0, Lc8/FLj;->this$0:Lc8/GLj;

    invoke-direct {p0}, Lc8/lXe;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errDesc"    # Ljava/lang/String;

    .prologue
    .line 1408
    const-string/jumbo v0, "YKAccs.init"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Agoo removeAlias onFailure errCode="

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

    .line 1409
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 1403
    const-string/jumbo v0, "YKAccs.init"

    const-string/jumbo v1, "Agoo removeAlias onSuccess"

    invoke-static {v0, v1}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    return-void
.end method
