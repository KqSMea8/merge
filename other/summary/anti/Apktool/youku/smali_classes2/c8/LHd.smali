.class public Lc8/LHd;
.super Ljava/lang/Object;
.source "ANRequest.java"

# interfaces
.implements Lc8/cJd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/VHd;->getUploadProgressListener()Lc8/cJd;
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
    .line 456
    .local p0, "this":Lc8/LHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$4;"
    iput-object p1, p0, Lc8/LHd;->this$0:Lc8/VHd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 5
    .param p1, "bytesUploaded"    # J
    .param p3, "totalBytes"    # J

    .prologue
    .line 459
    .local p0, "this":Lc8/LHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$4;"
    iget-object v0, p0, Lc8/LHd;->this$0:Lc8/VHd;

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, p3

    long-to-int v1, v2

    invoke-static {v0, v1}, Lc8/VHd;->access$5602(Lc8/VHd;I)I

    .line 460
    iget-object v0, p0, Lc8/LHd;->this$0:Lc8/VHd;

    invoke-static {v0}, Lc8/VHd;->access$5700(Lc8/VHd;)Lc8/cJd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/LHd;->this$0:Lc8/VHd;

    invoke-static {v0}, Lc8/VHd;->access$5400(Lc8/VHd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lc8/LHd;->this$0:Lc8/VHd;

    invoke-static {v0}, Lc8/VHd;->access$5700(Lc8/VHd;)Lc8/cJd;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lc8/cJd;->onProgress(JJ)V

    .line 463
    :cond_0
    return-void
.end method
