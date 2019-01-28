.class public Lc8/rLj;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Lc8/kAo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tLj;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/tLj;


# direct methods
.method constructor <init>(Lc8/tLj;)V
    .locals 0
    .param p1, "this$1"    # Lc8/tLj;

    .prologue
    .line 1508
    iput-object p1, p0, Lc8/rLj;->this$1:Lc8/tLj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setVip(Z)V
    .locals 2
    .param p1, "isVip"    # Z

    .prologue
    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "========\u662f\u5426\u662f\u4f1a\u5458===isVip====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1513
    if-eqz p1, :cond_0

    .line 1514
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Dfh;->isVipUserTemp:Z

    .line 1516
    :cond_0
    return-void
.end method
