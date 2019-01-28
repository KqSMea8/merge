.class public Lc8/bZm;
.super Landroid/text/style/ClickableSpan;
.source "PopLayerWeexView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dZm;->getInfo()Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dZm;

.field final synthetic val$configItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;


# direct methods
.method constructor <init>(Lc8/dZm;Lcom/alibaba/poplayer/trigger/BaseConfigItem;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dZm;

    .prologue
    .line 213
    iput-object p1, p0, Lc8/bZm;->this$0:Lc8/dZm;

    iput-object p2, p0, Lc8/bZm;->val$configItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 216
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lc8/bZm;->this$0:Lc8/dZm;

    invoke-virtual {v2}, Lc8/dZm;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 217
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lc8/bZm;->val$configItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    invoke-virtual {v2}, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "Configuration Item for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lc8/bZm;->val$configItem:Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    iget-object v6, v6, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 218
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 219
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 220
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 221
    return-void
.end method
