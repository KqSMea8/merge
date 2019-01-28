.class public Lc8/cZm;
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


# direct methods
.method constructor <init>(Lc8/dZm;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dZm;

    .prologue
    .line 227
    iput-object p1, p0, Lc8/cZm;->this$0:Lc8/dZm;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 230
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lc8/cZm;->this$0:Lc8/dZm;

    invoke-virtual {v2}, Lc8/dZm;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 231
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lc8/cZm;->this$0:Lc8/dZm;

    invoke-static {v2}, Lc8/dZm;->access$100(Lc8/dZm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "View Weex Source"

    .line 232
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 233
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 234
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 235
    return-void
.end method
