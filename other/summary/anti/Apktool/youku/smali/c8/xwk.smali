.class public Lc8/xwk;
.super Ljava/lang/Object;
.source "FreeFlowJsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/wwk;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mFreeFlowJsInterface:Lc8/wwk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, "FreeFlowJsBridge"

    iput-object v0, p0, Lc8/xwk;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public unicomNotify(Ljava/lang/String;)V
    .locals 2
    .param p1, "jsonStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " FreeFlowJsBridge unicomNotify() jsonStr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lc8/xwk;->mFreeFlowJsInterface:Lc8/wwk;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lc8/xwk;->mFreeFlowJsInterface:Lc8/wwk;

    invoke-interface {v0, p1}, Lc8/wwk;->notifyFreeFlowInfo(Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method
