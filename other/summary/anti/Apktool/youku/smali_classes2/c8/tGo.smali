.class public Lc8/tGo;
.super Ljava/lang/Object;
.source "VipHttpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zGo;->onFinished(Lc8/ONp;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zGo;

.field final synthetic val$finalT:Ljava/lang/Object;

.field final synthetic val$globalResponseModel:Lc8/oGo;


# direct methods
.method constructor <init>(Lc8/zGo;Lc8/oGo;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lc8/zGo;

    .prologue
    .line 518
    .local p0, "this":Lc8/tGo;, "Lcom/youku/vip/lib/http/service/VipHttpService$VipInternalMTopFinishListener$1;"
    iput-object p1, p0, Lc8/tGo;->this$0:Lc8/zGo;

    iput-object p2, p0, Lc8/tGo;->val$globalResponseModel:Lc8/oGo;

    iput-object p3, p0, Lc8/tGo;->val$finalT:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 521
    .local p0, "this":Lc8/tGo;, "Lcom/youku/vip/lib/http/service/VipHttpService$VipInternalMTopFinishListener$1;"
    iget-object v0, p0, Lc8/tGo;->this$0:Lc8/zGo;

    invoke-static {v0}, Lc8/zGo;->access$000(Lc8/zGo;)Lc8/mGo;

    move-result-object v0

    iget-object v1, p0, Lc8/tGo;->val$globalResponseModel:Lc8/oGo;

    iget-object v2, p0, Lc8/tGo;->val$finalT:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lc8/mGo;->onSuccess(Lc8/oGo;Ljava/lang/Object;)V

    .line 522
    return-void
.end method