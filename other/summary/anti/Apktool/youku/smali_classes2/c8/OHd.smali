.class public Lc8/OHd;
.super Ljava/lang/Object;
.source "ANRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/VHd;->deliverOkHttpResponse(Lc8/JId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/VHd;

.field final synthetic val$response:Lc8/JId;


# direct methods
.method constructor <init>(Lc8/VHd;Lc8/JId;)V
    .locals 0
    .param p1, "this$0"    # Lc8/VHd;

    .prologue
    .line 703
    .local p0, "this":Lc8/OHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$7;"
    iput-object p1, p0, Lc8/OHd;->this$0:Lc8/VHd;

    iput-object p2, p0, Lc8/OHd;->val$response:Lc8/JId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 706
    .local p0, "this":Lc8/OHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$7;"
    iget-object v0, p0, Lc8/OHd;->this$0:Lc8/VHd;

    invoke-static {v0}, Lc8/VHd;->access$5900(Lc8/VHd;)Lc8/YId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lc8/OHd;->this$0:Lc8/VHd;

    invoke-static {v0}, Lc8/VHd;->access$5900(Lc8/VHd;)Lc8/YId;

    move-result-object v0

    iget-object v1, p0, Lc8/OHd;->val$response:Lc8/JId;

    invoke-interface {v0, v1}, Lc8/YId;->onResponse(Lc8/JId;)V

    .line 709
    :cond_0
    iget-object v0, p0, Lc8/OHd;->this$0:Lc8/VHd;

    invoke-virtual {v0}, Lc8/VHd;->finish()V

    .line 710
    return-void
.end method
