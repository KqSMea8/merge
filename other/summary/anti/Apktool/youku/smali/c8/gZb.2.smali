.class public Lc8/gZb;
.super Landroid/text/style/ClickableSpan;
.source "PopLayerConsole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/poplayerconsole/PopLayerConsole;->updateStatusLine(Lc8/IZb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

.field final synthetic val$prefix:Ljava/lang/String;

.field final synthetic val$status:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 407
    iput-object p1, p0, Lc8/gZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    iput-object p2, p0, Lc8/gZb;->val$status:Ljava/util/Map;

    iput-object p3, p0, Lc8/gZb;->val$prefix:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 412
    iget-object v3, p0, Lc8/gZb;->val$status:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lc8/gZb;->val$prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "config_items"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/poplayer/utils/Monitor$Info;

    iget-object v0, v3, Lcom/alibaba/poplayer/utils/Monitor$Info;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 413
    .local v0, "configItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayer/trigger/BaseConfigItem;>;"
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lc8/gZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-virtual {v3}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 414
    .local v2, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    if-nez v0, :cond_0

    const-string/jumbo v3, "Configuration item list is null"

    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "Current Configuration Items"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 418
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 419
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 420
    return-void

    .line 414
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
