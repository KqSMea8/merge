.class public Lc8/dZb;
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
    .line 178
    iput-object p1, p0, Lc8/dZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    iput p2, p0, Lc8/dZb;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    .line 181
    iget-object v3, p0, Lc8/dZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    iget v4, p0, Lc8/dZb;->val$id:I

    invoke-virtual {v3, v4}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->getWindow(I)Lc8/IZb;

    move-result-object v2

    .line 182
    .local v2, "window":Lc8/IZb;
    if-nez v2, :cond_0

    .line 193
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lc8/dZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-virtual {v3}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 185
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lc8/dZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-virtual {v4}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$layout;->console_choose_log_tag:I

    sget v6, Lcom/youku/phone/R$id;->tag:I

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "All"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "Out-Console"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "WindVane"

    aput-object v9, v7, v8

    const-string/jumbo v8, "PopLayer"

    aput-object v8, v7, v10

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    new-instance v4, Lc8/kZb;

    iget-object v5, p0, Lc8/dZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-direct {v4, v5, v2}, Lc8/kZb;-><init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;Lc8/IZb;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "Please choose a tag"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 191
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 192
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
