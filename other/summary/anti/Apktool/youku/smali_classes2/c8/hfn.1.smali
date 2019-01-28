.class public Lc8/hfn;
.super Ljava/lang/Object;
.source "DownloadAccManager.java"

# interfaces
.implements Lc8/qfn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ofn;->consumeLegalInfo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/qfn",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ofn;


# direct methods
.method constructor <init>(Lc8/ofn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ofn;

    .prologue
    .line 288
    iput-object p1, p0, Lc8/hfn;->this$0:Lc8/ofn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetDataFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 296
    const-string/jumbo v0, "DownloadAccManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "consumeLegalInfo... onGetDataFail: failReason =>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public bridge synthetic onGetDataSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 288
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lc8/hfn;->onGetDataSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetDataSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 292
    return-void
.end method
