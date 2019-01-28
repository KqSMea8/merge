.class public Lc8/xbp;
.super Ljava/lang/Object;
.source "YoukuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Cbp;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Cbp;


# direct methods
.method constructor <init>(Lc8/Cbp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Cbp;

    .prologue
    .line 402
    iput-object p1, p0, Lc8/xbp;->this$0:Lc8/Cbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 407
    .local v0, "index":I
    iget-object v2, p0, Lc8/xbp;->this$0:Lc8/Cbp;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lc8/Cbp;->access$000(Lc8/Cbp;I)V

    .line 408
    iget-object v1, p0, Lc8/xbp;->this$0:Lc8/Cbp;

    invoke-static {v1}, Lc8/Cbp;->access$500(Lc8/Cbp;)Landroid/widget/RadioButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 409
    iget-object v1, p0, Lc8/xbp;->this$0:Lc8/Cbp;

    invoke-static {v1}, Lc8/Cbp;->access$200(Lc8/Cbp;)Lc8/Abp;

    move-result-object v1

    if-nez v1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v1, p0, Lc8/xbp;->this$0:Lc8/Cbp;

    invoke-static {v1}, Lc8/Cbp;->access$200(Lc8/Cbp;)Lc8/Abp;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/Abp;->onClick(I)V

    goto :goto_0
.end method
