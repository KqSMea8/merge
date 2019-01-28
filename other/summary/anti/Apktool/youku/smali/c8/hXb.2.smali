.class public Lc8/hXb;
.super Ljava/lang/Object;
.source "PopLayerBaseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jXb;->showCloseButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jXb;


# direct methods
.method constructor <init>(Lc8/jXb;)V
    .locals 0

    .prologue
    .line 125
    .local p0, "this":Lc8/hXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView.1;"
    iput-object p1, p0, Lc8/hXb;->this$0:Lc8/jXb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    .local p0, "this":Lc8/hXb;, "Lcom/alibaba/poplayer/factory/view/base/PopLayerBaseView.1;"
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v0

    iget-object v1, p0, Lc8/hXb;->this$0:Lc8/jXb;

    iget-object v1, v1, Lc8/jXb;->mPopRequest:Lc8/yXb;

    invoke-virtual {v0, v1}, Lcom/alibaba/poplayer/PopLayer;->removeRequest(Lc8/yXb;)V

    .line 129
    return-void
.end method
