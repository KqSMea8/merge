.class public Lc8/KHd;
.super Ljava/lang/Object;
.source "ANRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/VHd;->updateDownloadCompletion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/VHd;


# direct methods
.method constructor <init>(Lc8/VHd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/VHd;

    .prologue
    .line 434
    .local p0, "this":Lc8/KHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$3;"
    iput-object p1, p0, Lc8/KHd;->this$0:Lc8/VHd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 437
    .local p0, "this":Lc8/KHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$3;"
    iget-object v0, p0, Lc8/KHd;->this$0:Lc8/VHd;

    invoke-static {v0}, Lc8/VHd;->access$5500(Lc8/VHd;)Lc8/PId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lc8/KHd;->this$0:Lc8/VHd;

    invoke-static {v0}, Lc8/VHd;->access$5500(Lc8/VHd;)Lc8/PId;

    move-result-object v0

    invoke-interface {v0}, Lc8/PId;->onDownloadComplete()V

    .line 440
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Delivering success : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/IHd;->d(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lc8/KHd;->this$0:Lc8/VHd;

    invoke-virtual {v0}, Lc8/VHd;->finish()V

    .line 442
    return-void
.end method
