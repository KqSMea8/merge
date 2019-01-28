.class public Lc8/ds;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/js;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/js;


# direct methods
.method constructor <init>(Lc8/js;)V
    .locals 0
    .param p1, "this$0"    # Lc8/js;

    .prologue
    .line 143
    iput-object p1, p0, Lc8/ds;->this$0:Lc8/js;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lc8/ds;->this$0:Lc8/js;

    invoke-virtual {v0}, Lc8/js;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lc8/ds;->this$0:Lc8/js;

    invoke-virtual {v0}, Lc8/js;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lc8/ds;->this$0:Lc8/js;

    invoke-virtual {v0}, Lc8/js;->getListPopupWindow()Lc8/Hu;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Hu;->dismiss()V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lc8/ds;->this$0:Lc8/js;

    invoke-virtual {v0}, Lc8/js;->getListPopupWindow()Lc8/Hu;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Hu;->show()V

    .line 151
    iget-object v0, p0, Lc8/ds;->this$0:Lc8/js;

    iget-object v0, v0, Lc8/js;->mProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lc8/ds;->this$0:Lc8/js;

    iget-object v0, v0, Lc8/js;->mProvider:Landroid/support/v4/view/ActionProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V

    goto :goto_0
.end method
