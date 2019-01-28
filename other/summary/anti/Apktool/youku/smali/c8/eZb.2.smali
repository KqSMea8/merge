.class public Lc8/eZb;
.super Ljava/lang/Object;
.source "PopLayerConsole.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/poplayerconsole/PopLayerConsole;->getDropDownItems(I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

.field final synthetic val$id:I


# direct methods
.method public constructor <init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;I)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 196
    iput-object p1, p0, Lc8/eZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    iput p2, p0, Lc8/eZb;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 199
    iget-object v2, p0, Lc8/eZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    iget v3, p0, Lc8/eZb;->val$id:I

    invoke-virtual {v2, v3}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->getWindow(I)Lc8/IZb;

    move-result-object v1

    .line 200
    .local v1, "window":Lc8/IZb;
    if-nez v1, :cond_0

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    sget v2, Lcom/youku/phone/R$id;->status:I

    invoke-virtual {v1, v2}, Lc8/IZb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, "viewStatus":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
